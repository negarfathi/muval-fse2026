let rec loop vc : unit =
  let fa = 0.5418 *. vc *. vc (* the force control *) in
  let fr = 1000. -. fa in
  let ac = 0.0005 *. fr in
  let vc' = vc +. ac in
  assert (vc' < 49.61); (* the safety velocity *)
  loop vc'

let main () =
  let vc = 0. (* the initial velocity *) in
(*
  let fr = 1000. (* the initial force *) in
  let ac = 0.005 *. fr (* the initial acceleration *) in
*)
  loop vc
