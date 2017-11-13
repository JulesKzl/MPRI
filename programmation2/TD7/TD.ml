module type ITER = sig
	type t
	type elt
	type init
	val init : init -> t
	val next : t -> (elt*t) option
end

module L : ITER with type elt = int and type init = int list = struct
	type t = int list
	type elt = int
	type init = int list 
	let init l = l 
	let next l = match l with 
		| [] -> None
		| a::suite -> Some(a,init suite) 
end

let liste = L.init [1;2;3];;
L.next(liste);;
	
let rec sub_seq t n = 
  if n = 0 then 
    1 
  else 
    match L.next(t) with 
    | None -> 0
    | Some(x,t') -> sub_seq t' n + sub_seq t' (n-x)
;; 

sub_seq (L.init [99;1;2;3;4;98;97;93;94]) 100;;

type op = char * (int -> int -> int)
let plus = '+',(+)
let times = '*',( * )
let minus = '-',(-)
type expr =
  | I of int
  | Op of op * expr * expr
let rec eval = function
  | I i -> i
  | Op (o,a,b) -> (snd o) (eval a) (eval b)

let rec iter_subexpr e f = 
  f e ; 
  match e with 
  | I(_) -> ()
  | Op(_,e1,e2) -> iter_subexpr e1 f ; iter_subexpr e2 f 
;;


let rec iter_subexpr_k e f k = 
  f e (fun () -> 
  (match e with 
  | I (_) -> k ()
  | Op (_,e1,e2) -> iter_subexpr_k e2 f (fun () -> (iter_subexpr_k e1 f k))))
;;

module IterExpr : ITER with type elt = expr = struct 
  type t = (unit -> (elt*t) option)
  type elt = expr
  type init = expr 
  let init e = iter_subexpr_k e f k 
  let next e = match e 
end
