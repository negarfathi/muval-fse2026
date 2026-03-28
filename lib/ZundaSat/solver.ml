open Core
open Graph
open Graph.Gml
open Common

module Node = struct
  type t = Lambda | Var of name * sign
  and name = string
  and sign = bool

  let var_of = function
    | Lambda -> assert false
    | Var (name, sign) -> (name, sign)

  let name_of = function Lambda -> assert false | Var (name, _) -> name
  let sign_of = function Lambda -> assert false | Var (_, sign) -> sign
  let mk_var name sign = Var (name, sign)

  let str_of = function
    | Lambda -> "lambda"
    | Var (name, sign) -> if sign then name else "-" ^ name

  let level_of env t = Hashtbl.find_exn env t

  let rev_of = function
    | Lambda -> Lambda
    | Var (name, sign) -> Var (name, not sign)

  let str_of_edge src dst = str_of src ^ "->" ^ str_of dst

  let equal v1 v2 =
    match (v1, v2) with
    | Var (n1, s1), Var (n2, s2) -> Stdlib.(n1 = n2 && s1 = s2)
    | Lambda, Lambda -> true
    | _ -> false

  let hash = function
    | Var (n, s) -> if s then String.hash n else String.hash @@ "-" ^ n
    | Lambda -> String.hash "#Lambda-confit"

  let compare v1 v2 =
    match (v1, v2) with
    | Lambda, Lambda -> 0
    | Lambda, _ -> 1
    | _, Lambda -> -1
    | Var (n1, s1), Var (n2, s2) ->
        if Stdlib.(n1 < n2) then -1
        else if Stdlib.(n1 > n2) then 1
        else if Stdlib.(s1 = s2) then 0
        else if s1 then 1
        else -1

  let sexp_of_t t = Sexp.Atom (str_of t)
end

module type SolverType = sig
  val solve :
    ?print_sol:bool -> SAT.Problem.t -> SAT.Problem.solution Or_error.t

  val incremental_solve :
    SAT.Problem.t ->
    SAT.Problem.t ->
    SAT.Problem.t * SAT.Problem.solution Or_error.t
end

module Make (Config : Config.ConfigType) : SolverType = struct
  let config = Config.config
  let env = Hashtbl.create (module Node)
  let last_cnf = ref (SAT.Problem.make [])

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  module G = Imperative.Digraph.ConcreteBidirectional (Node)

  module Printer =
    Print
      (G)
      (struct
        let node v =
          [
            ( "label",
              Gml.String
                (Node.str_of v ^ ":" ^ string_of_int @@ Node.level_of env v) );
          ]

        let edge _ = [ ("label", Gml.String "") ]
      end)

  let simplify cnf = function
    | Node.Var (name, sign) ->
        let equal vn = Stdlib.(vn = name) in
        let unequal vn = Stdlib.(vn <> name) in
        List.fold_left cnf ~init:[] ~f:(fun res ((neg, pos), src) ->
            if
              (sign && List.exists pos ~f:equal)
              || ((not sign) && List.exists neg ~f:equal)
            then res
            else if sign then ((List.filter neg ~f:unequal, pos), src) :: res
            else ((neg, List.filter pos ~f:unequal), src) :: res)
        |> List.filter ~f:(function ([], []), _ -> false | _ -> true)
    | _ -> assert false

  let impiled_vars_of cnf =
    List.filter cnf ~f:(fun ((neg, pos), _) ->
        List.length neg + List.length pos = 1)
    |> List.map ~f:(fun ((neg, pos), src) ->
           if List.length neg = 1 then (Node.Var (List.hd_exn neg, false), src)
           else (Node.Var (List.hd_exn pos, true), src))
    |> List.fold_left ~init:[] ~f:(fun res (var, src) ->
           if List.exists res ~f:(fun (rvar, _) -> Node.equal rvar var) then res
           else (var, src) :: res)
  (* |> (fun res -> match res with [] -> [] | iv :: _ -> [iv]) *)

  (*default method*)
  let var_select_default = function
    | ((neg :: _, _), _) :: _ -> Node.Var (neg, true)
    | (([], pos :: _), _) :: _ -> Node.Var (pos, false)
    | _ -> assert false
  (* end here *)

  (* FFP method *)

  (* append all literals into a list *)
  let rec ffp_append_clause cnf =
    match cnf with
    | [] as l -> l
    | ((neg, pos), _) :: tl ->
        let clause' = List.append neg pos in
        List.append clause' (ffp_append_clause tl)

  let hash_succ a = match a with Some a' -> a' + 1 | None -> assert false

  let count_hashtbl list =
    let counter = Hashtbl.create (module String) in
    let update_counter x =
      if Hashtbl.mem counter x then
        Hashtbl.update counter x ~f:(fun o -> hash_succ o)
        (* if x exists, x.data+1 *)
      else Hashtbl.set counter ~key:x ~data:1 (* if x does not exists, x.1 *)
    in
    List.iter ~f:update_counter list;
    Hashtbl.to_alist counter

  let var_select_ffp cnf =
    let list' =
      ffp_append_clause cnf |> count_hashtbl
      |> List.sort ~compare:(fun (_, x) (_, y) -> Int.descending x y)
    in
    let v = List.hd list' in
    (* the most occurence one i.e. the first one*)
    match v with
    | Some (a, _) -> Node.Var (a, false)
    | _ ->
        failwith
          "Something went wrong with var_select_ffp.(An empty list returned.)"

  (* end here *)

  (* MOMS method *)
  let rec moms_append_clause cnf min =
    match cnf with
    | [] -> []
    | ((neg, pos), _) :: tl ->
        let clause' = List.append neg pos in
        if List.length clause' <= min (*Mininum Size*) then
          List.append clause' (moms_append_clause tl min)
        else moms_append_clause tl min

  let var_select_moms cnf =
    let interlist = moms_append_clause cnf 3 in
    match interlist with
    | [] -> var_select_ffp cnf
    | _ -> (
        let list' =
          count_hashtbl interlist
          |> List.sort ~compare:(fun (_, x) (_, y) -> Int.descending x y)
        in
        let v = List.hd list' in
        (* the most occurence one i.e. the first one*)
        match v with Some (a, _) -> Node.Var (a, false) | _ -> assert false)
  (* end here *)

  (* VSIDS method _ Chaff Original*)
  let number_of_variables = 400
  let pos_score_table = Array.init number_of_variables ~f:(fun _ -> 0)

  (* pos score table *)
  let neg_score_table = Array.init number_of_variables ~f:(fun _ -> 0)

  (* neg score table *)
  let conflict_counter = ref 0 (* counter for counting occured conflits *)

  let rec neg_append_clause cnf =
    match cnf with
    | [] as l -> l
    | ((neg, _), _) :: tl -> List.append neg (neg_append_clause tl)

  let neg_counter cnf =
    List.iter (neg_append_clause cnf) ~f:(fun x ->
        let i = int_of_string x in
        neg_score_table.(i) <- neg_score_table.(i) + 1)

  let rec pos_append_clause cnf =
    match cnf with
    | [] as l -> l
    | ((_, pos), _) :: tl -> List.append pos (pos_append_clause tl)

  let pos_counter cnf =
    List.iter (pos_append_clause cnf) ~f:(fun x ->
        let i = int_of_string x in
        pos_score_table.(i) <- pos_score_table.(i) + 1)

  let unassign list array_1 array_2 =
    List.iter
      ~f:(fun x ->
        let i = int_of_string x in
        array_1.(i) <- array_2.(i))
      (List.dedup_and_sort ~compare:String.compare list)

  let index_of tup
      polar (* indicator: tells the polarity of the given literal *) =
    match (tup, polar) with
    | (a, _), 1 -> Node.Var (string_of_int a, false)
    | (a, _), 0 -> Node.Var (string_of_int a, true)
    | _ -> assert false

  let var_select_vsids_chaff cnf posscoretbl negscoretbl =
    match Array.max_elt ~compare:Int.compare posscoretbl with
    | Some 0 -> (
        (* Initialization *)
        (* first time choosing implication literal *)
        let _ = pos_counter cnf in
        let _ = neg_counter cnf in
        match
          ( Array.max_elt ~compare:Int.compare posscoretbl,
            Array.max_elt ~compare:Int.compare negscoretbl )
        with
        | Some a, Some b ->
            if a > b then
              index_of (Array.findi_exn posscoretbl ~f:(fun _ y -> y = a)) 1
            else index_of (Array.findi_exn negscoretbl ~f:(fun _ y -> y = b)) 0
        | _ -> assert false)
    | _ -> (
        let pos = pos_append_clause cnf in
        let pos_unassigned_table =
          Array.init number_of_variables ~f:(fun _ -> 0)
        in
        (* pos unassigned literals *)
        let _ = unassign pos pos_unassigned_table pos_score_table in
        let neg = neg_append_clause cnf in
        let neg_unassigned_table =
          Array.init number_of_variables ~f:(fun _ -> 0)
        in
        (* neg unassigned literals *)
        let _ = unassign neg neg_unassigned_table neg_score_table in
        match
          ( Array.max_elt ~compare:Int.compare pos_unassigned_table,
            Array.max_elt ~compare:Int.compare neg_unassigned_table )
        with
        | Some a, Some b ->
            if a > b then
              index_of
                (Array.findi_exn pos_unassigned_table ~f:(fun _ y -> y = a))
                1
            else
              index_of
                (Array.findi_exn neg_unassigned_table ~f:(fun _ y -> y = b))
                0
        | _ -> assert false)

  (* end here *)

  let decision_var_of cnf =
    match config.br_choice with
    | Default ->
        var_select_default cnf (* Default: select the first occured literal *)
    | FFP ->
        var_select_ffp cnf (* FFP: select the literal with the most occurence *)
    | MOMS ->
        var_select_moms cnf
        (* MOMS: select the literal with the maximum occurrence in clauses of minimum size *)
    | VSIDS _ -> var_select_vsids_chaff cnf pos_score_table neg_score_table

  let check_confict ig ivars =
    List.findi ivars ~f:(fun _ -> function
      | Node.Var (name, sign), _ -> G.mem_vertex ig @@ Node.Var (name, not sign)
      | _, _ -> false)

  let clause_of_nodes nodes =
    List.fold_left nodes ~init:([], []) ~f:(fun (neg, pos) -> function
      | Node.Var (name, false) -> (name :: neg, pos)
      | Node.Var (name, true) -> (neg, name :: pos)
      | _ -> (neg, pos))

  let simplify_learned_clause_of ig lc =
    List.filter lc ~f:(fun node -> not (G.mem_vertex ig @@ Node.rev_of node))

  let learned_clause_of ig level env =
    let remove_diu l = Hash_set.of_list (module Node) l |> Hash_set.to_list in
    let rec _learned_clause_of preds res =
      Debug.print @@ lazy (sprintf "---\n");
      let preds', res' =
        List.fold_left ~init:([], res) preds ~f:(fun (preds', res') var ->
            Debug.print @@ lazy (sprintf "%s\n" @@ Node.str_of @@ var);
            match var with
            | Node.Var (_, _) ->
                let vl = Hashtbl.find_exn env var in
                if vl = level then (var :: preds', res')
                else (preds', Node.rev_of var :: res')
            | _ -> assert false)
      in
      let preds'', res'' = (remove_diu preds', remove_diu res') in
      if List.length preds'' = 1 then
        res' @ List.map preds'' ~f:Node.rev_of |> remove_diu
      else
        _learned_clause_of
          ((G.pred ig @@ List.hd_exn preds'') @ List.tl_exn preds'')
          res''
    in
    _learned_clause_of (G.pred ig @@ Node.Lambda) []

  let backtrack dvars ig level lcs env =
    let a = Hashtbl.keys env in
    let b = Hashtbl.data env in
    let _ = Debug.print @@ lazy (sprintf "env") in
    let _ =
      List.iter2 a b ~f:(fun x y ->
          Debug.print @@ lazy (sprintf "%s with level %d" (Node.str_of x) y))
    in
    let lc = List.hd_exn lcs in
    let _ = Debug.print @@ lazy (sprintf "learned clauses") in
    let _ =
      List.iter lc ~f:(fun x ->
          Debug.print
          @@ lazy
               (sprintf "| %s with level %d |" (Node.str_of x)
                  (Node.level_of env @@ Node.rev_of x)))
    in
    (* Debug printer *)
    let rec find_back_point dvars =
      match dvars with
      | [] -> []
      | (var, _) :: dvars' ->
          let vl = Node.level_of env var in
          if vl <> level then
            if
              List.exists lc ~f:(fun var ->
                  match var with
                  | Node.Var (_, _) ->
                      let l = Node.level_of env @@ Node.rev_of var in
                      l = vl
                  | _ -> assert false)
            then
              let _ = Debug.print @@ lazy (sprintf "back to level :%d\n" vl) in
              dvars
            else find_back_point dvars'
          else find_back_point dvars'
    in
    let clear_node_after_bkpoint dvar =
      let dl = Node.level_of env dvar in
      G.fold_vertex
        (fun v res ->
          if Node.level_of env v >= dl && not (Node.equal dvar v) then v :: res
          else res)
        ig []
      |> List.iter ~f:(fun v ->
             G.remove_vertex ig v;
             Hashtbl.remove env v)
    in
    (* let rec remove_succs succs =
       match succs with
       | [] -> ()
       | _ -> List.iter succs ~f:(fun v ->
          remove_succs @@ G.succ ig v;
          G.remove_vertex ig v;
          Hashtbl.remove env v)
       in *)
    let dvars' = find_back_point dvars in
    match dvars' with
    | [] -> None
    | (bk_node, his) :: tl ->
        let _ = clear_node_after_bkpoint bk_node in
        let lcs' =
          List.map lcs ~f:(fun lc ->
              ( clause_of_nodes @@ simplify_learned_clause_of ig lc,
                clause_of_nodes lc ))
        in
        Some ((bk_node, lcs' @ his) :: tl)

  let assing_of_ig ig =
    G.fold_vertex
      (fun var res -> (Node.name_of var, Node.sign_of var) :: res)
      ig []

  let str_of_cnf cnf =
    List.map cnf ~f:fst |> SAT.Problem.make |> SAT.Problem.str_of

  let less_clause_of_ivar (var, (neg, pos)) =
    let name, sign = Node.var_of var in
    if sign then (var, (neg, List.filter pos ~f:(fun n -> Stdlib.(name <> n))))
    else (var, (List.filter neg ~f:(fun n -> Stdlib.(name <> n)), pos))

  let bind_level env var level =
    match Hashtbl.add env ~key:var ~data:level with _ -> ()

  let solve ?(print_sol = false) cnf =
    let lcs = ref [] in
    let scnf = ref (SAT.Problem.clauses_of cnf) in
    (*cnf + lcs*)
    Hashtbl.clear env;
    let rec _solve cnf ig level dvars =
      let _ = str_of_cnf cnf in
      let _ =
        Debug.print @@ lazy (sprintf "currrent cnf:\n%s\n" @@ str_of_cnf cnf)
      in
      (* let _ = Printer.print (Format.std_formatter) ig in *)
      if List.length cnf = 0 then
        let _ =
          last_cnf :=
            SAT.Problem.make @@ List.map !lcs ~f:clause_of_nodes @ !scnf
        in
        SAT.Problem.Sat (assing_of_ig ig)
      else
        let ivars = impiled_vars_of cnf in
        let cnf' =
          match ivars with
          | [] -> cnf
          | (var, _) :: _ ->
              List.iter ivars ~f:(fun ivar ->
                  let var, (sneg, spos) = less_clause_of_ivar ivar in
                  bind_level env var level;
                  G.add_vertex ig var;
                  Debug.print
                  @@ lazy
                       (sprintf "impiled var:%s:%d\n" (Node.str_of var) level);
                  List.iter sneg ~f:(fun name ->
                      G.add_edge ig (Node.Var (name, true)) var);
                  List.iter spos ~f:(fun name ->
                      G.add_edge ig (Node.Var (name, false)) var));
              simplify cnf var
        in
        (* Printer.print (Format.std_formatter) ig; *)
        match check_confict ig ivars with
        | Some (_, (Node.Var (name, _), _)) -> (
            Debug.print @@ lazy (sprintf "conflicted in level %d!\n" level);
            conflict_counter := succ !conflict_counter;
            let _ =
              match config.br_choice with
              | VSIDS a ->
                  if !conflict_counter mod a = 0 then
                    let _ = Array.map pos_score_table ~f:(fun x -> x / 2) in
                    Array.map neg_score_table ~f:(fun x -> x / 2)
                  else pos_score_table
              | _ -> pos_score_table
            in
            if level = 0 then SAT.Problem.Unsat
            else
              let _ =
                G.add_edge ig (Node.Var (name, true)) Node.Lambda;
                G.add_edge ig (Node.Var (name, false)) Node.Lambda;
                bind_level env Node.Lambda level
                (* Printer.print (Format.std_formatter) ig;  *)
              in
              let lc = learned_clause_of ig level env in
              let _ =
                match clause_of_nodes lc with
                | neg, pos ->
                    let _ =
                      List.iter neg ~f:(fun x ->
                          let i = int_of_string x in
                          neg_score_table.(i) <- neg_score_table.(i) + 1)
                    in
                    List.iter pos ~f:(fun x ->
                        let i = int_of_string x in
                        pos_score_table.(i) <- pos_score_table.(i) + 1)
              in
              (*let _ = Debug.print @@ lazy (sprintf  "Pos Score Table\n-----------"); print1 (List.sort ~compare:my_compare (Hashtbl.to_alist pos_score_table)) in
                let _ = Debug.print @@ lazy (sprintf  "Neg Score Table\n-----------"); print2 (List.sort ~compare:my_compare (Hashtbl.to_alist neg_score_table)) in*)
              let _ = lcs := lc :: !lcs in
              match backtrack dvars ig level !lcs env with
              | None ->
                  Debug.print @@ lazy (sprintf "restartd!\n");
                  scnf := List.map !lcs ~f:clause_of_nodes @ !scnf;
                  lcs := [];
                  Hashtbl.clear env;
                  _solve
                    (List.map !scnf ~f:(fun v -> (v, v)))
                    (G.create ()) 0 []
              | Some ((bk_point, his) :: tl) ->
                  _solve his ig
                    (Node.level_of env bk_point)
                    ((bk_point, his) :: tl)
              | _ -> assert false)
        | _ ->
            if List.length ivars > 0 then _solve cnf' ig level dvars
            else
              let dvar = decision_var_of cnf' in
              Debug.print
              @@ lazy (sprintf "decision var:%s\n" @@ Node.str_of dvar);
              G.add_vertex ig dvar;
              bind_level env dvar (level + 1);
              let cnf'' = simplify cnf' dvar in
              _solve cnf'' ig (level + 1) ((dvar, cnf'') :: dvars)
    in
    let solution =
      _solve (List.map !scnf ~f:(fun v -> (v, v))) (G.create ()) 0 []
    in
    if print_sol then
      print_endline (SAT.Problem.str_of_solution ~verbose:true solution);
    Ok solution

  let incremental_solve rcd cnf =
    match rcd with
    | SAT.Problem.Cnf [] ->
        let res = solve cnf in
        (!last_cnf, res)
    | SAT.Problem.Cnf prbm ->
        let res =
          solve @@ SAT.Problem.make @@ prbm @ SAT.Problem.clauses_of cnf
        in
        (!last_cnf, res)
end
