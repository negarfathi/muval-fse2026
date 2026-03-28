open Core
open Common
open Type
open Type.Lbool
open Vector

module type SolverType = sig
  val solve :
    ?print_sol:bool -> SAT.Problem.t -> SAT.Problem.solution Or_error.t

  val incremental_solve : ?print_sol:bool -> SAT.Problem.t -> SAT.Problem.incsol
end

module Make (Config : Config.ConfigType) : SolverType = struct
  include Data

  let config = Config.config

  module Debug =
    Debug.Make ((val Debug.Config.(if config.verbose then enable else disable)))

  let enqueue t p from =
    let propQ = propQ_of t in
    Debug.print @@ lazy (sprintf "enqueue : %s" (Literal.str_of p));
    if Stdlib.(value_of_lit t p <> Lbool.Undef) then
      if Stdlib.(value_of_lit t p = False) then false
      else (
        Debug.print @@ lazy (sprintf "%s has in queue." @@ Literal.str_of p);
        true)
    else
      let assigns = assigns_of t in
      let levels = levels_of t in
      let reason = reason_of t in
      let trail = trail_of t in
      let var = Literal.var_of p in
      assigns.%[var] <- mk_lbool @@ Literal.sign_of p;
      reason.%[var] <- from;
      levels.%[var] <- decision_level_of t;
      Queue.enqueue propQ p;
      Vector.push trail p;
      true

  let mk_var t =
    let watches = watches_of t in
    let undos = undos_of t in
    let reason = reason_of t in
    let assigns = assigns_of t in
    let levels = levels_of t in
    let index = Vector.size_of assigns in
    Vector.push watches (Vector.create ());
    Vector.push watches (Vector.create ());
    Vector.push undos (Vector.create ());
    Vector.push reason Clause.undef;
    Vector.push assigns Lbool.Undef;
    Vector.push levels (-1);
    index

  let simplify_clause t clause =
    if Clause.is_undef clause then true
    else
      let lits = Clause.lits_of clause in
      let j, ret =
        Vector.fold_left lits ~init:(0, false) ~f:(fun (j, ret) lit ->
            if j = -1 then (j, ret)
            else if Stdlib.(value_of_lit t lit = True) then (-1, true)
            else if Stdlib.(value_of_lit t lit = Undef) then (
              lits.%[j] <- lit;
              (j + 1, ret))
            else (j, ret))
      in
      if ret then ret
      else (
        Vector.shrink lits j;
        ret)

  let mk_clause t lits learnt =
    let ret =
      if Stdlib.(learnt = False) then
        if Vector.exists lits ~f:(fun lit -> Stdlib.(value_of_lit t lit = True))
        then true
        else if
          Vector.exists lits ~f:(fun lit1 ->
              Vector.exists lits ~f:(fun lit2 ->
                  Literal.var_of lit1 = Literal.var_of lit2
                  && Stdlib.(Literal.sign_of lit1 <> Literal.sign_of lit2)))
        then true
        else (
          Vector.remove_if lits ~f:(fun lit ->
              Stdlib.(value_of_lit t lit = False));
          false)
      else false
    in
    if ret then Ok Clause.undef
    else if Vector.size_of lits = 0 then Error Clause.undef
    else if Vector.size_of lits = 1 then
      if enqueue t lits.%[0] @@ Clause.undef then Ok Clause.undef
      else Error Clause.undef
    else
      let new_clause = Clause.create learnt in
      let new_lits = Clause.lits_of new_clause in
      let watches = watches_of t in
      let levels = levels_of t in
      Vector.moveTo lits new_lits;
      if bool_of learnt then (
        let max_i, _, _ =
          Vector.fold_left new_lits ~init:(0, 0, -1)
            ~f:(fun (max_i, index, level) elem ->
              let var = Literal.var_of elem in
              let next_level = levels.%[var] in
              if level >= next_level then (max_i, index + 1, level)
              else (index, index + 1, next_level))
        in
        new_lits.%[1] <- lits.%[max_i];
        new_lits.%[max_i] <- lits.%[1]);
      Vector.push
        watches.%[Literal.index_of @@ Literal.neg_of new_lits.%[0]]
        new_clause;
      Vector.push
        watches.%[Literal.index_of @@ Literal.neg_of new_lits.%[1]]
        new_clause;
      Ok new_clause

  let remove_clause t clause =
    if Fn.non Clause.is_undef clause then (
      let lits = Clause.lits_of clause in
      let watches = watches_of t in
      Vector.remove_if
        watches.%[Literal.index_of @@ Literal.neg_of @@ lits.%[0]]
        ~f:(Clause.is_equal clause);
      Vector.remove_if
        watches.%[Literal.index_of @@ Literal.neg_of @@ lits.%[1]]
        ~f:(Clause.is_equal clause))

  let propagate_clause t clause p =
    let lits = Clause.lits_of clause in
    let watches = watches_of t in
    if Stdlib.(lits.%[0] = Literal.neg_of p) then lits.%[0] <- lits.%[1];
    lits.%[1] <- Literal.neg_of p;
    if Stdlib.(value_of_lit t lits.%[0] = True) then (
      Vector.push watches.%[Literal.index_of p] clause;
      true)
    else
      Vector.fold_left lits ~init:(0, true) ~f:(fun (index, ret) elem ->
          if index = -1 then (index, ret)
          else if index < 2 then (index + 1, ret)
          else if Stdlib.(value_of_lit t elem <> False) then (
            lits.%[1] <- elem;
            lits.%[index] <- Literal.neg_of p;
            Vector.push
              watches.%[Literal.index_of @@ Literal.neg_of lits.%[1]]
              clause;
            (-1, true))
          else (index + 1, ret))
      |> fun (index, ret) ->
      if index = -1 then ret
      else (
        Debug.print
        @@ lazy
             (sprintf "Clause %s is unit under assignment:%s"
                (Clause.str_of clause) (Literal.str_of p));
        Vector.push watches.%[Literal.index_of @@ p] clause;
        enqueue t lits.%[0] clause)

  let calc_reason clause p =
    let lits = Clause.lits_of clause in
    let ret = Vector.create () in
    let start = if Literal.is_undef p then 0 else 1 in
    snd
    @@ Vector.fold_left lits ~init:(0, ret) ~f:(fun (index, ret) elem ->
           if index < start then (index + 1, ret)
           else
             let _ = Vector.push ret @@ Literal.neg_of elem in
             (index + 1, ret))

  let propagate t env =
    let _ = env in
    let propQ = propQ_of t in
    let watches = watches_of t in
    (* Debug.print @@ lazy (watches_str_of t env); *)
    let rec loop propQ =
      Debug.print @@ lazy (propQ_str_of t);
      let p = Queue.dequeue propQ in
      match p with
      | Some lit ->
          Debug.print @@ lazy (sprintf "propagate :%s\n" @@ Literal.str_of lit);
          (* Debug.print @@ lazy (watches_str_of_lit t lit); *)
          let tmp = Vector.create () in
          Vector.moveTo watches.%[Literal.index_of lit] tmp;
          let index, ret =
            Vector.fold_left tmp ~init:(0, Clause.undef)
              ~f:(fun (index, ret) elem ->
                if index = -1 then (
                  Vector.push watches.%[Literal.index_of lit] elem;
                  (index, ret))
                else if not (propagate_clause t elem lit) then (-1, elem)
                else (index + 1, ret))
          in
          (* Debug.print @@ lazy (watches_str_of_lit t lit); *)
          if index <> -1 then loop propQ
          else (
            Queue.clear propQ;
            Debug.print
            @@ lazy (sprintf "Confit clause is :%s" (Clause.str_of ret));
            Error ret)
      | None -> Ok ()
    in
    loop propQ

  let undo_one t =
    let trail = trail_of t in
    let assigns = assigns_of t in
    let reason = reason_of t in
    let levels = levels_of t in
    let undos = undos_of t in
    let p = Vector.last trail in
    let x = Literal.var_of p in
    assigns.%[x] <- Undef;
    reason.%[x] <- Clause.undef;
    levels.%[x] <- -1;
    Vector.pop trail;
    Vector.clear undos.%[x]

  let assmume t p =
    let trail_lim = trail_lim_of t in
    let trail = trail_of t in
    Vector.push trail_lim (Vector.size_of trail);
    enqueue t p Clause.undef

  let cancle t =
    let trail_lim = trail_lim_of t in
    let trail = trail_of t in
    let c = Vector.size_of trail - Vector.last trail_lim in
    (* Debug.print @@ lazy ( "c = %d - %d = %d\n" (Vector.size_of trail) (Vector.last trail_lim ) c; *)
    for _ = 0 to c - 1 do
      undo_one t
    done;
    Vector.pop trail_lim

  let rec cancle_until t level =
    if decision_level_of t > level then
      let _ = cancle t in
      cancle_until t level
    else ()

  let analyze t confl =
    let seen = Vector.create_def (nvars t) false in
    let levels = levels_of t in
    let trail = trail_of t in
    let out_learnt = Vector.create () in
    Vector.push out_learnt Literal.undef;
    Debug.print @@ lazy "start analyze";
    Debug.print @@ lazy (propQ_str_of t);
    let rec next_reason p =
      let _ = Debug.print @@ lazy (sprintf "next lit:%s" (Literal.str_of p)) in
      let reason = reason_of t in
      let confl = reason.%[Literal.var_of p] in
      undo_one t;
      if seen.%[Literal.var_of p] then (p, confl)
      else next_reason (Vector.last trail)
    in
    let rec loop counter p confl out_level =
      let p_reason = calc_reason confl p in
      Debug.print
      @@ lazy
           (sprintf "counter is %d, reason is %s:%s, level:%d\n" counter
              (Literal.str_of p)
              (Clause.str_of @@ Clause.mk_clause p_reason)
              (level_of t p));
      let counter', out_level' =
        Vector.fold_left p_reason ~init:(counter, out_level)
          ~f:(fun (counter, out_level) elem ->
            if not seen.%[Literal.var_of elem] then (
              seen.%[Literal.var_of elem] <- true;
              if levels.%[Literal.var_of elem] = decision_level_of t then
                let _ =
                  Debug.print
                  @@ lazy
                       (sprintf "seen lit [%s] in highest level:[%d]"
                          (Literal.str_of elem)
                          levels.%[Literal.var_of elem])
                in
                (counter + 1, out_level)
              else if levels.%[Literal.var_of elem] > 0 then (
                let _ =
                  Debug.print
                  @@ lazy
                       (sprintf "seen lit [%s] in before level:[%d]"
                          (Literal.str_of elem)
                          levels.%[Literal.var_of elem])
                in
                Vector.push out_learnt @@ Literal.neg_of elem;
                let out_level' = max levels.%[Literal.var_of elem] out_level in
                (counter, out_level'))
              else
                let _ =
                  Debug.print
                  @@ lazy
                       (sprintf "seen lit [%s] in 0 level:[%d]"
                          (Literal.str_of elem)
                          levels.%[Literal.var_of elem])
                in
                (counter, out_level))
            else (counter, out_level))
      in
      let p', confl' = next_reason @@ Vector.last trail in
      Debug.print
      @@ lazy
           (sprintf "next reason is %s:%s, level:%d\n" (Literal.str_of p')
              (Clause.str_of confl') (level_of t p'));
      if counter' - 1 > 0 then loop (counter' - 1) p' confl' out_level'
      else
        let _ = Vector.set out_learnt 0 (Literal.neg_of p') in
        (out_learnt, out_level')
    in
    loop 0 Literal.undef confl 0

  let record t lits =
    let new_clause = mk_clause t lits True in
    let _ =
      Debug.print
      @@ lazy
           (sprintf "new clause : %s\n"
           @@ Clause.str_of
           @@ Clause.mk_learned_clause lits)
    in
    let learnts = learnts_of t in
    match new_clause with
    | Ok c ->
        let _ =
          Debug.print
          @@ lazy (sprintf "new learnt clause : %s\n" @@ Clause.str_of c)
        in
        let _ = enqueue t lits.%[0] c in
        if Stdlib.(Clause.is_learnt c <> Undef) then Vector.push learnts c
    | Error _ -> assert false

  let select t name_env =
    let assigns = assigns_of t in
    let rec loop var =
      let assign = assigns.%[var] in
      if Stdlib.(assign = Undef) then
        Literal.mk_lit (Litenv.name_of name_env var) False name_env
      else loop (var + 1)
    in
    loop 0

  let clause_of_list t name_env (neg, pos) =
    let lit_of sign name =
      if Litenv.exists name_env name then Literal.mk_lit name sign name_env
      else
        let _ = mk_var t in
        Literal.mk_lit name sign name_env
    in
    let lits =
      List.map neg ~f:(lit_of False) @ List.map pos ~f:(lit_of True)
      |> Vector.of_list
    in
    mk_clause t lits False

  let model_to_list model =
    Vector.to_list model
    |> List.map ~f:(fun lit ->
           (Literal.name_of lit, Fn.non Literal.sign_of lit))

  let print_result = function
    | Ok sol -> print_endline (SAT.Problem.str_of_solution ~verbose:true sol)
    | Error msg -> print_endline msg

  let simplifyDB t env =
    Debug.print @@ lazy "simplifyDB";
    match propagate t env with
    | Ok _ ->
        let constrs = constrs_of t in
        let learnts = learnts_of t in
        let j =
          Vector.fold_left constrs ~init:0 ~f:(fun j constr ->
              if simplify_clause t constr then (
                remove_clause t constr;
                j)
              else (
                constrs.%[j] <- constr;
                j + 1))
        in
        Vector.shrink constrs j;
        let j =
          Vector.fold_left learnts ~init:0 ~f:(fun j constr ->
              if simplify_clause t constr then (
                remove_clause t constr;
                j)
              else (
                learnts.%[j] <- constr;
                j + 1))
        in
        Vector.shrink learnts j;
        true
    | Error _ -> false

  let rec search ?(print_sol = false) ?(data = Data.create ())
      ?(name_env = Litenv.create ()) prbm =
    let ret =
      List.fold_left (SAT.Problem.clauses_of prbm) ~init:true ~f:(fun ret cla ->
          if not ret then ret
          else
            match clause_of_list data name_env cla with
            | Ok c ->
                add_constr data c;
                true
            | Error _ -> false)
    in
    Debug.print @@ lazy (constrs_str_of data);
    if not ret then SAT.Problem.IncUnsat
    else
      let rec loop t conflitC root_level =
        Debug.print @@ lazy (trail_str_of t);
        let _ = simplifyDB in
        let ret = propagate t name_env in
        match ret with
        | Ok _ ->
            let _ =
              Debug.print
              @@ lazy (sprintf "nassigns :%d, nvars :%d" (nassigns t) (nvars t))
            in
            let ret =
              if decision_level_of t = 0 then simplifyDB t name_env else true
            in
            if not ret then SAT.Problem.IncUnsat
            else if nassigns t = nvars t then
              let model = Vector.create () in
              let trail = trail_of t in
              let _ =
                Vector.iter trail ~f:(fun elem -> Vector.push model elem)
              in
              let _ = cancle_until t root_level in
              SAT.Problem.IncSat (model_to_list model, search ~data ~name_env)
            else
              let p = select t name_env in
              let _ =
                Debug.print
                @@ lazy (sprintf "select a value:%s\n" @@ Literal.str_of p)
              in
              let _ = assmume t p in
              loop t conflitC root_level
        | Error confl ->
            if decision_level_of t = 0 then SAT.Problem.IncUnsat
            else
              let _ = Debug.print @@ lazy "confit!" in
              let learnt_clause, bk_level = analyze t confl in
              let _ =
                Debug.print
                @@ lazy
                     (sprintf "new clause #: %s\n"
                     @@ Clause.str_of
                     @@ Clause.mk_learned_clause learnt_clause)
              in
              let _ = cancle_until t @@ max bk_level root_level in
              Debug.print @@ lazy (learnts_str_of t);
              record t learnt_clause;
              loop t (conflitC + 1) root_level
      in
      let ret = loop data 0 0 in
      let sol =
        match ret with
        | IncSat (sol, _) -> Ok (SAT.Problem.Sat sol)
        | IncUnsat -> Ok SAT.Problem.Unsat
        | IncUnknown -> Ok SAT.Problem.Unknown
      in
      if print_sol then print_result sol;
      ret

  let solve ?(print_sol = false) prbm =
    let sol =
      match search ~print_sol prbm with
      | IncSat (sol, _) -> Ok (SAT.Problem.Sat sol)
      | IncUnsat -> Ok SAT.Problem.Unsat
      | IncUnknown -> Ok SAT.Problem.Unknown
    in
    sol

  let incremental_solve ?(print_sol = false) prbm = search ~print_sol prbm
end
