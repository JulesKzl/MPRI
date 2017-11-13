(** Signature représentant les types finis.
 *
 * Le type [t] est équipé de fonctions [to_int] et [of_int],
 * qu'on supposera inverses l'une de l'autre.
 *
 * De plus le type est supposé fini, c'est à dire qu'on ne
 * rencontrera que des valeurs [x] telles que
 * [0 <= to_int x < max].
 *
 * La fonction [of_int] ne devra être appelée que sur des
 * valeurs [i] tel que [0 <= i < max]. *)
module type FIN = sig
  type t
  val max : int
  val to_int : t -> int
  val of_int : int -> t
end

(** Signature décrivant un type d'ensembles [t] dont les éléments
 * sont dans [elt].
 *
 * Les opérations ne modifient jamais en place un ensemble,
 * mais ceux-ci sont manipulés dans un style persistant.
 *
 * L'égalité structurelle d'OCaml sur [t] doit correspondre à
 * l'égalité ensembliste. *)
module type SET = sig
  type t
  type elt

  (** Cardinal d'un ensemble, en temps constant *)
  val cardinal : t -> int

  (** Ensemble vide *)
  val empty : t

  (** Création d'un ensemble contenant tous les éléments
     * pour lesquels une fonction est vraie. *)
  val init : (elt -> bool) -> t

  (** Ajout d'un élément *)
  val add : t -> elt -> t

  (** Suppression d'un élément *)
  val remove : t -> elt -> t

  (** Test d'appartenance *)
  val member : t -> elt -> bool

  (** Détermine si le premier ensemble est sous-ensemble du second *)
  val subset : t -> t -> bool

  (** Itération d'une fonction sur les éléments d'un ensemble *)
  val iter : t -> (elt -> unit) -> unit
end


module Make (F : FIN) : SET with type elt = F.t = struct

  type t = {mutable cardinal : int ; tab : Int64.t array}
  type elt = F.t

  let only_one_bit k = Int64.shift_left Int64.one (k mod 64)

  (** Cardinal d'un ensemble, en temps constant *)
  let cardinal s = s.cardinal

  (** Ensemble vide *)
  let empty : t =
    {cardinal = 0 ; tab = Array.make ((F.max / 64) + 1) Int64.zero}

  (** Création d'un ensemble contenant tous les éléments
    * pour lesquels une fonction est vraie. *)
  let init (g : elt -> bool) : t =
    let card = ref 0 in
    let new_tab = Array.make ((F.max / 64) + 1) Int64.zero in
    for k = 0 to F.max-1 do
      if g (F.of_int k) then (
         new_tab.(k/64) <- Int64.logor new_tab.(k/64) (only_one_bit k) ;
         incr card )
    done;
    {cardinal = !card ; tab = new_tab}


  (** Ajout d'un élément *)
  let add (s:t) (x:elt) : t =
    let k = F.to_int x in
    let new_tab = Array.copy s.tab in
    if Int64.compare (Int64.logand (only_one_bit k) s.tab.(k/64)) Int64.zero = 0
    then
    (new_tab.(k/64) <- Int64.logor (only_one_bit k) s.tab.(k/64);
    {cardinal = s.cardinal + 1 ; tab = new_tab})
    else s


  (** Suppression d'un élément (On suppose également qu'il n'est pas présent )*)
  let remove (s:t) (x:elt) : t =
    let k = F.to_int x in
    let new_tab = Array.copy s.tab in
    new_tab.(k/64) <- Int64.logand (Int64.lognot (only_one_bit k)) s.tab.(k/64);
    {cardinal = s.cardinal - 1 ; tab = new_tab}

  (** Test d'appartenance *)
  let member (s:t) (x:elt) : bool =
      let k = F.to_int x in
      Int64.compare (Int64.logand (only_one_bit k) s.tab.(k/64)) Int64.zero <> 0

  (** Détermine si le premier ensemble est sous-ensemble du second *)
  let subset (s1:t) (s2:t) : bool =
    let sub = ref true and k = ref 0 in
    while !sub && !k < ((F.max / 64) + 1) do
      sub := Int64.compare (Int64.logand s1.tab.(!k) (Int64.lognot s2.tab.(!k))) Int64.zero = 0;
      incr k
    done;
    !sub


  (** Itération d'une fonction sur les éléments d'un ensemble *)
  let iter (s:t) (g: elt -> unit) : unit =
    for i = 0 to F.max do
      let k = F.of_int i in
      if member s k then
	g k
    done



end
