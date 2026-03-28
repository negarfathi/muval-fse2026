(*unsolved*)
let rec mult x y = if y = 0 then 0 else x + mult x (y-1)
(*
let rec double x = if x = 0 then 0 else 2 + double (x-1)
*)
let rec double x = [%syn "x : int, double : int -> int |- int"]
let main x =
  assert (mult x 2 = double x)

(*
Node Unfold
{
  Node Valid_Bot
}
{
  Node Unfold
  {
    Node Unfold
    {
      Node Valid_Bot
    }
    {
      Node Unfold
      {
        Node Valid_Bot
      }
      {
        Node Valid_Bot
      }
    }
  }
  {
    Node Unfold
    {
      Node Valid_Bot
    }
    {
      Node Unfold
      {
        Node Unfold
        {
          Node Valid_Bot
        }
        {
          Node Valid_Bot
        }
      }
      {
        Node Unfold
        {
          Node Unfold
          {
            Node Valid_Bot
          }
          {
            Node ApplyBot Node Valid_Bot
          }
        }
        {
          Node Valid_Bot
        }
      }
    }
  }
}
Safe!
*)
