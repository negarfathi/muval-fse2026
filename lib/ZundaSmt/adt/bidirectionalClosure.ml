open Core
open Ast
open Ast.LogicOld
open EquivalenceClosure
open CongruenceClosure
open UnificationClousure

type t = EquivalenceClosure.t

let rec combine bc q level =
  match Queue.dequeue q with
  | None -> Ok ()
  | Some (t1, t2, reason) -> (
      match confit bc t1 t2 with
      | Some confit_reason ->
          let reasons =
            Set.union reason
            @@ Set.add
                 (Set.union (get_reason bc t1) (get_reason bc t2))
                 confit_reason
          in
          Error reasons
      | None ->
          let nexts = merge ~print:Debug.print bc t1 t2 level reason in
          let nexts = nexts @ inject bc t1 t2 in
          Debug.print
          @@ lazy
               (List.fold_left nexts ~init:"nexts:\n"
                  ~f:(fun ret (t1, t2, reasons) ->
                    ret
                    ^ sprintf "%s = %s, reason:%s" (Term.str_of t1)
                        (Term.str_of t2) (str_of_reasons reasons)
                    ^ "\n"));
          if clash bc t1 t2 then
            let reasons = Set.union (get_reason bc t1) (get_reason bc t2) in
            Error reasons
          else (
            List.iter nexts ~f:(fun (t1, t2, reason) ->
                Queue.enqueue q (t1, t2, reason));
            Debug.print
            @@ lazy
                 (Queue.fold q ~init:"combine queue:\n"
                    ~f:(fun ret (t1, t2, reasons) ->
                      ret
                      ^ sprintf "%s = %s, reason:%s" (Term.str_of t1)
                          (Term.str_of t2) (str_of_reasons reasons)
                      ^ "\n"));
            Debug.print @@ lazy (all_classes_str_of bc);
            combine bc q level))

let tf_conflit bc =
  let t = T_bool.mk_true () in
  let f = T_bool.mk_false () in
  if same_class bc t f then
    Error (Set.union (get_reason bc f) (get_reason bc t))
  else Ok ()

let cal_bc bc level =
  let eqs = get_eqs bc level in
  let deqs = get_deqs bc in
  let q =
    Queue.of_list
    @@ List.map eqs ~f:(fun (t1, t2, _) ->
           (t1, t2, Set.Poly.singleton @@ T_bool.mk_eq t1 t2))
  in
  Debug.print
  @@ lazy (sprintf "all classes before cal bc:\n%s" @@ all_classes_str_of bc);
  match combine bc q level with
  | Error reasons -> Error reasons
  | Ok () -> (
      Debug.print @@ lazy (all_classes_str_of bc);
      match List.find deqs ~f:(fun (dt1, dt2, _) -> same_class bc dt1 dt2) with
      | Some (dt1, dt2, _) ->
          Debug.print @@ lazy "comline finished. confict found.";
          let reason = Normalizer.normalize_atom @@ T_bool.mk_neq dt1 dt2 in
          let reasons = Set.union (get_reason bc dt1) (get_reason bc dt2) in
          let reasons = Set.add reasons reason in
          Error reasons
      | None -> (
          match tf_conflit bc with
          | Error reasons ->
              Debug.print @@ lazy "pvar confit.";
              Error reasons
          | Ok () -> Ok ()))
