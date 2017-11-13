type 'a list = [ `Nil | `Cons of 'a*'a list ]

let rec map (f :'a -> 'b) (l:'a list) : 'b list = match l with
  | `Nil -> `Nil
  | `Cons (hd,tl) -> `Cons(f hd,map f tl)
;;

let rec equals (l : 'a list) (l' : 'a list) : bool = match (l,l') with 
  | (`Nil,`Nil) -> true 
  | (`Nil,_) -> false
  | (_,`Nil) -> false
  | (`Cons (hd1,tl1),`Cons (hd2,tl2)) when hd1 = hd2 -> equals tl1 tl2
  | _ -> false
;;


type 'a alist = [ `Nil | `Cons of 'a*'a alist | `Append of 'a alist* 'a alist]

let rec map (f: 'a -> 'b) (l : 'a alist) : 'b alist = match l with 
  | `Nil -> `Nil
  | `Cons (hd,tl) -> `Cons (f hd, map f tl) 
  | `Append (l1,l2) -> `Append (map f l1,map f l2)
;;

let rec append (l:'a list) (l': 'a list) : 'a list = match (l,l') with 
  | `Nil,_ -> l'
  | _,`Nil -> l 
  | `Cons (hd,tl),_ -> `Cons (hd, append tl l')

let rec flatten (l : 'a alist) : 'a list = match l with 
  | `Nil -> `Nil
  | `Cons (hd,tl) -> `Cons (hd,flatten tl)
  | `Append (l1,l2) -> append (flatten l1) (flatten l2)

let () =
  let make = List.fold_left (fun a b -> `Cons (b,a)) `Nil in
  let a = make ['b';'l';'a'] in (* a :: l :: b :: Nil *)
  let b = `Append (a,a) in
    assert (equals (flatten b) (make ['b';'l';'a';'b';'l';'a'])) (* a::l::b::a::l::b::Nil *)




(** AST non typé *)

type expr =
  | Int of int
  | String of string
  | Concat of expr*expr
  | Add of expr*expr
  | Substring of expr*expr*expr
  | Pair of expr*expr
  | Fst of expr
  | Snd of expr

(** Valeurs *)

type value =
  | VInt of int
  | VString of string
  | VPair of value*value

(** Evaluateur non typé *)

let rec eval = function
  | Int i -> VInt i
  | String s -> VString s
  | Concat (a,b) ->
      begin match eval a, eval b with
        | VString sa, VString sb -> VString (sa^sb)
        | _ -> failwith "eval error"
      end
  | Add (a,b) ->
      begin match eval a, eval b with
        | VInt sa, VInt sb -> VInt (sa+sb)
        | _ -> failwith "eval error"
      end
  | Substring (a,b,c) ->
      begin match eval a, eval b, eval c with
        | VString a, VInt b, VInt c ->
            VString (String.sub a b c)
        | _ -> failwith "eval error"
      end
  | Pair (a,b) -> VPair (eval a, eval b)
  | Fst e ->
      begin match eval e with
        | VPair (a,b) -> a
        | _ -> failwith "eval error"
      end
  | Snd e ->
      begin match eval e with
        | VPair (a,b) -> b
        | _ -> failwith "eval error"
      end

type 'a wtexpr = 
  | Int : int -> int wtexpr
  | String : string -> string wtexpr
  | Concat :  (string wtexpr * string wtexpr) -> string wtexpr 
  | Add : (int wtexpr * int wtexpr) -> int wtexpr
  | Substring : (string wtexpr * int wtexpr * int wtexpr) -> string wtexpr
  | Pair : ('a wtexpr * 'b wtexpr) -> ('a*'b) wtexpr
  | Fst : ('a*'b) wtexpr -> 'a wtexpr
  | Snd : ('a*'b) wtexpr -> 'b wtexpr

let rec wteval : type t. t wtexpr -> t = function 
  | Int i -> i
  | String s -> s
  | Concat (a,b) -> (wteval a)^(wteval b)
  | Add (a,b) -> (wteval a)+(wteval b)
  | Substring (a,b,c) -> String.sub (wteval a) (wteval b) (wteval c) 
  | Pair (a,b) -> (wteval a, wteval b)
  | Fst e -> let (a,b) = wteval e in a
  | Snd e -> let (a,b) = wteval e in b

type _ typ =
  | TInt : int typ
  | TString : string typ
  | TPair : 'a typ * 'b typ -> ('a*'b) typ
      

type iswtexpr =
  | IsWT : 'a typ * 'a wtexpr -> iswtexpr

let rec typecheck : expr -> iswtexpr = function 
  | Int i -> IsWT( TInt, Int i)
  | String s -> IsWT (TString, String s)
  | Concat (a,b) -> 
      begin match typecheck a, typecheck b with
        | IsWT(TString,e1),IsWT(TString,e2) -> IsWT (TString, Concat (e1,e2))
        | _ -> failwith "eval error"
      end
  | Add (a,b) ->
      begin match typecheck a, typecheck b with
        | IsWT(TInt,e1),IsWT(TInt,e2) -> IsWT (TInt, Add (e1,e2))
        | _ -> failwith "eval error"
      end
  | Substring (a,b,c) ->
      begin match typecheck a, typecheck b, typecheck c with
        | IsWT(TString,e1),IsWT(TInt,e2),IsWT(TInt,e2)
      -> IsWT(TString, Substring (e1,e2,e3))
        | _ -> failwith "eval error"
      end
  | Pair (a,b) -> let IsWT(t1,e1) = typecheck a and IsWT (t2,e2) = typecheck b in
		  IsWT(TPair(t1,t2),Pair (e1,e2))
  | Fst e ->
      begin match typecheck e with
        | IsWT (t,e1) when e1 = Pair (a,b) ->  IsWT (fst t,a)
        | _ -> failwith "eval error"
      end
  | Snd e ->
      begin match typecheck e with
        | IsWT (t,e2) when e2 = Pair (a,b) -> IsWT (snd t,b)
        | _ -> failwith "eval error"
      end
