module type ORDERED = sig
  type t
  val compare : t -> t -> int
end

module Make (M:ORDERED) = struct

  (** Noeud dans la file (ou pas) *)
  type 'a node = { mutable key : M.t ; value : 'a }

  (** File de priorité dont les priorités sont dans [M.t]
    * et qui contient des données de type ['a]. *)
  type 'a queue = { mutable cardinal : int ; tas : ('a node) array }

  (** [create max_size dummy_key dummy_value] crée une nouvelle
    * file pouvant contenir au plus [max_size] éléments.
    * Les [dummy_*] pourront être utilisés pour initialiser
    * la file. *)
  let create (max_size :int) (dummy_key :M.t) (dummy_value:'a) : 'a queue =
    {cardinal = 0 ; tas = Array.make (max_size+1) ({ key = dummy_key ; value = dummy_value })}


  (* Crée un noeud *)
  let create_node (key : M.t) (value : 'a) : 'a node =
    {  key = key ; value = value }

  (** Nombre d'entrées enfilés *)
  let size (f:'a queue) : int = f.cardinal


  (* Remonte un noeud d'indice p à la bonne place *)
  let remonter (p : int) (f: 'a queue) : unit =
    let p' = ref p in
    while (!p' > 1) && (M.compare (f.tas.(!p'/2).key) (f.tas.(!p').key) > 0) do
      let temp = ref (f.tas.(!p')) in
      f.tas.(!p') <- f.tas.(!p'/2) ;
      f.tas.(!p'/2) <- !temp ;
      p' := !p'/2
    done


  (* Descends un noeud d'indice p à la bonne place *)
  let descendre (p : int) (f: 'a queue) : unit =
    let p' = ref p in
    let stop = ref false in
    while (2*(!p') <= f.cardinal) && (not !stop) do
      p' := 2*(!p') ;
      (if (!p' +1) <= f.cardinal && (M.compare (f.tas.(!p' +1).key) (f.tas.(!p').key) < 0)
      then p' := !p' + 1) ;
      (if (M.compare (f.tas.(!p'/2).key) (f.tas.(!p').key) <= 0)
      then stop := true ) ;
      let temp = ref (f.tas.(!p')) in
      f.tas.(!p') <- f.tas.(!p'/2) ;
      f.tas.(!p'/2) <- !temp
    done



  (** [insert queue key value] insère une nouvelle entrée,
    * et renvoie la noeud associé. *)
  let insert (f:'a queue) (k:M.t) (v:'a) : 'a node =
    f.cardinal <- f.cardinal + 1 ;
    let n = {key = k ; value = v } in
    f.tas.(f.cardinal) <- n ;
    remonter (f.cardinal) f ;
    n


  (** Extraction du minimum d'une queue.
    * On peut supposer la queue non vide.
    * Le noeud renvoyé est déja supprimé de la queue. *)
  let extract_min (f:'a queue) : 'a node =
    if f.cardinal = 0 then failwith "la file est vide" else (
    let n = f.tas.(1) in
    f.tas.(1) <- f.tas.(f.cardinal) ;
    f.cardinal <- f.cardinal - 1 ;
    descendre 1 f ;
    n)



  (** Clé et valeur associés à un noeud *)

  let key (n:'a node) : M.t = n.key

  let value (n:'a node) : 'a = n.value

  (** Suppression d'un noeud dans la queue.
    * On pourra supposer que le noeud est initialement
    * présent dans la queue. *)
  let remove  (f:'a queue) (n:'a node) : unit =
    (* On cherche l'indice du noeud n dans le tas f.tas *)
    let p = ref 1 in
    let found = ref false in
    while (!p <= f.cardinal) && (not !found) do
      if f.tas.(!p) = n then found := true else incr p
    done;
    if !p = f.cardinal+1 then failwith "noeud pas dans le tas" ;
    (* Puis on le supprime *)
    f.tas.(!p) <- f.tas.(f.cardinal) ;
    f.cardinal <- f.cardinal - 1;
    remonter (!p) f ; descendre (!p) f


  (** Indique si un noeud est présent dans la queue *)
  let member (f:'a queue) (n: 'a node) : bool =
    let p = ref 1 in
    let found = ref false in
    while (!p <= f.cardinal) && (not !found) do
      if f.tas.(!p) = n then found := true else incr p
    done;
  !found


  (** Décrément de la clé associée à un noeud.
    * Si le noeud n'est pas (plus) présent dans la queue,
    * alors il y est (r)ajouté avec la nouvelle clé. *)
  let decrease_key (f:'a queue) (n:'a node) (k:M.t) : unit =
    if (M.compare (n.key) (k) > 0 )
    then failwith "la nouvelle clé est plus grande que la précédente"
    else (
      (* On cherche l'indice du noeud n dans le tas f.tas *)
      let p = ref 1 in
      let found = ref false in
      while (!p <= f.cardinal) && (not !found) do
        if f.tas.(!p) = n then found := true else incr p
      done;
      if !p = f.cardinal+1 then failwith "noeud pas dans le tas" ;
      (* On change la priorité *)
      f.tas.(!p).key <- k ;
      remonter (!p) f
      )

  (* Supprime tous les élements de la file tels que f key soit vrai *)
  let remove_key (g :M.t -> bool) (f:'a queue) : unit =
    let t = f.tas and n = f.cardinal in
    for i = n downto 1 do
      let node = t.(i) in
      let k = node.key in
      if g k then remove f node  ;
    done;


end
