(*

class ['a,'b] directory : object
  constraint 'b = < iter : ('a -> unit) -> unit; .. >
  method add_item : string -> 'a -> unit
  method add_directory : string -> 'b -> unit
  method iter : ('a -> unit) -> unit
end
*) 

class ['a,'b] directory = 
 object
  val mutable items : (string,'a) Hashtbl.t = Hashtbl.create 29
  val sub_dir : (string,'b) Hashtbl.t  = Hashtbl.create 12

  method add_item (label : string) (item : 'a) = Hashtbl.add items label item 
  method add_directory (label : string) (dir : 'b) = Hashtbl.add sub_dir label dir
  method iter (f : 'a -> unit) = (
	let g = (fun _ x -> f(x:>'a)) in 
	Hashtbl.iter g items ;
	let f' = (fun x -> f(x:> 'a)) in
	let h = (fun _ x -> x#iter f') in
	Hashtbl.iter h sub_dir )
end


type p = <pos:float*float>
type pc = <pos:float*float;color:string>


type 'a read_only_dir




let d = new directory 
let d' = new directory
let () =
  d#add_item "O" (object method pos = 0.,0. end) ;
  d'#add_item "O_red" (object method pos = 0.,0. method color = "red" end) ;
  (* !! La ligne problématique !! *)
  d#add_directory "pc" d' 
