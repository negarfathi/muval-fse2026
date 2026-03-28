open Core
open Common.Ext
open Common.Combinator
open Ast
open Ast.LogicOld
open Graph
open Graph.Gml

module V = struct
  type t = Term.t

  let equal v1 v2 = String.(Term.str_of v1 = Term.str_of v2)
  let hash v = String.hash (Term.str_of v)
  let compare v1 v2 = String.compare (Term.str_of v1) (Term.str_of v2)
end

module G = Imperative.Digraph.ConcreteBidirectional (V)

module Printer =
  Print
    (G)
    (struct
      let node v = [ ("label", Gml.String (Term.str_of v)) ]
      let edge _ = [ ("label", Gml.String "") ]
    end)

type t = {
  vs : (V.t * V.t UnionFind.t) Set.Poly.t;
  g : G.t;
  eqs : (Term.t * Term.t * int) list;
  deqs : (Term.t * Term.t * int) list;
  splited : Term.t Set.Poly.t;
  level : int;
}

let vertexs_of ec = ec.vs
let graph_of ec = ec.g
let deqs_of ec = ec.deqs

let class_of ec uf =
  let vs = vertexs_of ec in
  Set.fold vs ~init:Set.Poly.empty ~f:(fun ret (v1, uf1) ->
      if UnionFind.same_class uf uf1 then Set.add ret v1 else ret)

let all_classes_of ec =
  let vs = vertexs_of ec in
  Set.fold vs ~init:Set.Poly.empty ~f:(fun ret (_, uf1) ->
      let c1 = class_of ec uf1 in
      Set.add ret c1)

let deqs_str_of ec =
  let deqs = ec.deqs in
  List.fold_left deqs ~init:"deqs:\n" ~f:(fun ret (t1, t2, l) ->
      ret ^ sprintf "%s != %s :%d\n" (Term.str_of t1) (Term.str_of t2) l)

let get_vertex ec t =
  let vs = vertexs_of ec in
  match Set.find vs ~f:(fun (t1, _) -> V.equal t t1) with
  | Some v -> v
  | None -> failwith @@ sprintf "unknown term:%s" (Term.str_of t)

let get_unionfind ec t = snd @@ get_vertex ec t

let get_reason ec t =
  let uf = snd @@ get_vertex ec t in
  UnionFind.get_reason uf

let str_of_reasons reasons =
  String.bracket @@ String.concat_map_set ~sep:"; " reasons ~f:Atom.str_of

let str_of_class ec c =
  "class:" ^ String.bracket
  @@ String.concat_map_set ~sep:"; " c ~f:(fun v ->
         sprintf "%s(%s)" (Term.str_of v) (str_of_reasons @@ get_reason ec v))

let all_classes_str_of ec =
  let cs = all_classes_of ec in
  Set.fold cs ~init:"all class:\n" ~f:(fun ret c ->
      ret ^ str_of_class ec c ^ "\n")

let graph_str_of ec =
  let g = ec.g in
  let buffer = Format.stdbuf in
  Buffer.clear buffer;
  Printer.print Format.str_formatter g;
  Buffer.contents buffer

let add_vertex ec t =
  let vs = vertexs_of ec in
  if not @@ Set.exists vs ~f:(fun (t1, _) -> V.equal t t1) then (
    let g = graph_of ec in
    let vs' = Set.add vs (t, UnionFind.create t (Term.str_of t)) in
    G.add_vertex g t;
    { ec with vs = vs'; g })
  else ec

let add_edge ec f t =
  let g = graph_of ec in
  G.add_edge g f t

let succs_of _ = function
  | Term.FunApp
      ( T_bool.Formula (Formula.Atom (Atom.App (Predicate.Var (_, _), ts, _), _)),
        [],
        _ ) ->
      ts
  | Term.FunApp (_, ts, _) -> ts
  | _ -> []

let preds_of ec t =
  let uf = snd @@ get_vertex ec t in
  if UnionFind.preds_is_empty uf then
    let g = graph_of ec in
    Set.Poly.of_list @@ G.pred g t
  else UnionFind.get_preds uf

let same_class ec t1 t2 =
  let v1, v2 = (get_vertex ec t1, get_vertex ec t2) in
  UnionFind.same_class (snd v1) (snd v2)

let in_class c t1 = Set.exists c ~f:(V.equal t1)

let root_of ec t =
  let v = get_vertex ec t in
  UnionFind.get (snd v)

let root_of_class ec c = root_of ec @@ Set.min_elt_exn c

let compare_term t1 t2 =
  match (t1, t2) with
  | t1, t2 when T_bool.is_true t2 || T_bool.is_false t2 -> (t2, t1)
  | Term.FunApp _, Term.Var _ -> (t2, t1)
  | _ -> (t1, t2)

let union ~print ?(level = 0) ec t1 t2 reason =
  let t1, t2 = compare_term t1 t2 in
  print @@ lazy (sprintf "union : (%s, %s)" (Term.str_of t1) (Term.str_of t2));
  let uf1, uf2 = (snd @@ get_vertex ec t1, snd @@ get_vertex ec t2) in
  if UnionFind.preds_is_empty uf1 then
    UnionFind.update_preds uf1 (preds_of ec t1) level;
  if UnionFind.preds_is_empty uf2 then
    UnionFind.update_preds uf2 (preds_of ec t2) level;
  UnionFind.union uf1 uf2 ~level reason

let atom_is_eq = function
  | Atom.App (Predicate.Psym T_bool.Eq, _, _) -> true
  | _ -> false

let atom_is_neq = function
  | Atom.App (Predicate.Psym T_bool.Neq, _, _) -> true
  | _ -> false

let atot = function
  | Atom.App (Predicate.Psym T_bool.Eq, [ t1; t2 ], _)
  | Atom.App (Predicate.Psym T_bool.Neq, [ t1; t2 ], _) ->
      (t1, t2)
  | _ -> assert false

let rec label_of_term = function
  | Term.Var (x, _, _) -> Ident.name_of_tvar x
  | Term.FunApp (T_int.Int i, _, _) -> Z.to_string i
  | Term.FunApp (T_real.Real r, _, _) -> Q.to_string r
  | Term.FunApp (T_num.Value (v, _), _, _) -> v
  | Term.FunApp (T_bool.Formula phi, _, _) -> label_of_formula phi
  | Term.FunApp (op, _, _) -> Term.str_of_funsym op
  | Term.LetTerm _ -> failwith "unsupported let term"

and label_of_atom = function
  | Atom.True _ -> "true"
  | Atom.False _ -> "false"
  | Atom.App (pred, _, _) -> Predicate.str_of pred

and label_of_formula = function
  | Formula.Atom (atom, _) -> label_of_atom atom
  | _ -> assert false

let rec set_term ec t =
  match Set.find ec.vs ~f:(fun (t1, _) -> V.equal t t1) with
  | Some _ -> ec
  | None -> (
      match t with
      | Term.Var (_, _, _)
      | Term.FunApp (T_int.Int _, _, _)
      | Term.FunApp (T_real.Real _, _, _)
      | LetTerm _
      | Term.FunApp (T_num.Value (_, _), _, _) ->
          add_vertex ec t
      | Term.FunApp (T_bool.Formula phi, _, _) -> set_formula ec phi
      | Term.FunApp (_, ts, _) ->
          let ec' =
            List.fold_left ts ~init:ec ~f:(fun ec t1 ->
                let ec' = set_term ec t1 in
                add_edge ec' t t1;
                ec')
          in
          add_vertex ec' t)

and set_atom ec atom =
  let t = T_bool.of_atom atom in
  match Set.find ec.vs ~f:(fun (t1, _) -> V.equal t t1) with
  | Some _ -> ec
  | None -> (
      match atom with
      | Atom.True _ -> add_vertex ec (T_bool.mk_true ())
      | Atom.False _ -> add_vertex ec (T_bool.mk_false ())
      | Atom.App (Predicate.Var _, ts, _) | Atom.App (Predicate.Psym _, ts, _)
        ->
          let ec' =
            List.fold_left ts ~init:ec ~f:(fun ec t1 ->
                let ec' = set_term ec t1 in
                add_edge ec' t t1;
                ec')
          in
          add_vertex ec' t
      | _ -> assert false)

and set_formula ec = function
  | Formula.Atom (atom, _) -> set_atom ec atom
  | _ -> assert false

let add_atoms ~print ec atoms level =
  (* let atoms = List.map atoms ~f:set_dest_atom in *)
  print
  @@ lazy
       (List.fold_left atoms ~init:"add atoms:\n" ~f:(fun ret a ->
            ret ^ Atom.str_of a ^ "\n"));
  let eqs = List.filter atoms ~f:atom_is_eq in
  let neqs = List.filter atoms ~f:atom_is_neq in
  print
  @@ lazy
       (List.fold_left eqs ~init:"eqs:\n" ~f:(fun ret a ->
            ret ^ Atom.str_of a ^ "\n"));
  print
  @@ lazy
       (List.fold_left neqs ~init:"neqs:\n" ~f:(fun ret a ->
            ret ^ Atom.str_of a ^ "\n"));
  let terms =
    List.fold_left (eqs @ neqs) ~init:[] ~f:(fun ret atom ->
        let t1, t2 = atot atom in
        t1 :: t2 :: ret)
  in
  let ec' = List.fold_left terms ~init:ec ~f:set_term in
  (* Debug.print @@ lazy (sprintf "term graph:\n%s" @@ graph_str_of ec'); *)
  {
    ec' with
    eqs =
      ec.eqs
      @ List.map eqs ~f:(fun a ->
            let t1, t2 = atot a in
            (t1, t2, level));
    deqs =
      ec.deqs
      @ List.map neqs ~f:(fun a ->
            let t1, t2 = atot a in
            (t1, t2, level));
    level;
  }

let get_eqs ec level = List.filter ec.eqs ~f:(Triple.trd >> ( = ) level)
let get_deqs ec = ec.deqs

let backtrack ec level =
  let eqs = List.filter ec.eqs ~f:(fun (_, _, l) -> l <= level) in
  let deqs = List.filter ec.deqs ~f:(fun (_, _, l) -> l <= level) in
  let vs = vertexs_of ec in
  Set.iter vs ~f:(fun (_, uf) -> UnionFind.backtrack uf level);
  { ec with eqs; deqs }

let confit ec t1 t2 =
  let deqs = get_deqs ec in
  match
    List.find deqs ~f:(fun (dt1, dt2, _) ->
        (V.equal t1 dt1 && V.equal t2 dt2) || (V.equal t1 dt2 && V.equal t2 dt1))
  with
  | Some (dt1, dt2, _) -> Some (T_bool.mk_neq dt1 dt2)
  | None -> None

let cal_ec ~print ec level =
  let eqs = get_eqs ec level in
  let deqs = get_deqs ec in
  List.iter eqs ~f:(fun (t1, t2, _) ->
      union ~print ec t1 t2 ~level (Set.Poly.singleton @@ T_bool.mk_eq t1 t2));
  print
  @@ lazy (sprintf "all classes after cal ec:\n%s" @@ all_classes_str_of ec);
  List.iter deqs ~f:(fun (t1, t2, _) ->
      if same_class ec t1 t2 then failwith "confit")

let make () =
  let t = T_bool.mk_true () in
  let f = T_bool.mk_false () in
  let ec =
    {
      vs = Set.Poly.empty;
      g = G.create ();
      eqs = [];
      deqs = [];
      level = 0;
      splited = Set.Poly.empty;
    }
  in
  set_term (set_term ec t) f
