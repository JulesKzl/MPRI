module type Container = sig
  type t
  type elt
  val empty  : t
  val add    : elt -> t -> t
  val merge  : t -> t -> t
  val member : elt -> t -> bool
  val fold   : ('a -> elt -> 'a) -> 'a -> t -> 'a
end

module type AnyT = sig
  type t
end

module LContainer (A:AnyT) : (Container with type elt = A.t) = struct 
	type t = A.t list 
	type elt = A.t 
	let empty = [] 
	let member a s = List.mem a s 
	let add a s = a::s 
	let merge u v = u @ v 
	let fold f a s = List.fold_left f a s 
end 

module SLContainer (A:Set.OrderedType) : (Container with type elt = A.t) = struct
        type t = A.t list
        type elt = A.t
        let empty = []
	let eq a a' = (A.compare a a') = 0 
        let rec member a s = match s with 
		| [] -> false
		| x::_ when (eq a x) -> true  
		| x::_ when (A.compare x a) > 0 -> false 
		| x::suite -> member a suite 
        
	let rec add a s = match s with 
		| [] -> [a]
		| x::suite when (A.compare x a) < 0 -> x::(add a suite)
		| _ -> a::s 
		
        let rec merge u v = match (u,v) with 
		| ([],_) -> v 
		| (_,[]) -> u 
		| (x::suite,_) -> merge suite (add x v) 

        let fold f a s = List.fold_left f a s        
end

module Int = struct 
	type t = int 
	let compare = compare 
end 


let () =
  let module Test (M:Container with type elt = int) =
    struct
      open M
      let () =
        let s = add 42 (add 16 (add 64 empty)) in
        let s = merge s s in
          assert (member 42 s) ;
          assert (member 16 s) ;
          assert (member 64 s) ;
          Printf.printf "Result: " ;
          fold (fun () elt -> Printf.printf "%d+" elt) () s ;
          Printf.printf "ø\n"
    end
  in
  let module A = Test(LContainer(Int)) in
  let module B = Test(SLContainer(Int)) in
    ()









module type Printable = sig
  type t
  val to_string : t -> string
end

module String = struct 
	include String 
	let to_string x = x 
end


module type PContainer = sig
  type t
  type elt
  val empty  : t
  val add    : elt -> t -> t
  val merge  : t -> t -> t
  val member : elt -> t -> bool
  val fold   : ('a -> elt -> 'a) -> 'a -> t -> 'a
  val to_string : t -> string
end

module MakePrintable (A:Printable) (C:Container with type elt = A.t) : (PContainer with type t = C.t and type elt = C.elt ) = struct
	include C
	let to_string x = fold (fun s elt -> s^(A.to_string elt)) "" x 
		 
end


let () =
  let module Test (M:PContainer with type elt = string) =
    struct
      open M
      let () =
        let s =
          add "d" (merge (add "a" empty) (add "c" (add "b" empty)))
        in
          Printf.printf "Result: %s\n" (to_string s)
    end
  in
  let module A = Test(MakePrintable(String)(LContainer(String))) in
  let module B = Test(MakePrintable(String)(SLContainer(String))) in
    ()
