module type S = sig
  val grid : bool Hex.grid
  val start : Hex.pos
end

module Make (M : S) : sig

  (** Ensembles de cases servant pour les configurations *)
  module HSet : Bitset.SET with type elt = Hex.pos

  (* Convertit un HSet en une matrice de booléens *)
  val hset_to_bool_grid : HSet.t -> bool Hex.grid

  (* Convertit une matrice de booléens en un HSet *)
  val bool_grid_to_hset : bool Hex.grid -> HSet.t

  (** Affichage d'un chemin sous la forme d'une liste
    * de positions. Le chemin devra apparaitre, sur la grille
    * [M.grid] où les cases de glace sont représentées par '*',
    * selon une numérotation des cases du chemin par
    *   a ... z A ... Z 0 ... 9 puis ? pour les éventuelles
    *                                cases suivantes. *)
  val pp_path : Format.formatter -> Hex.pos list -> unit

  (** Liste de tous les mouvements faisables sur la configuration
    * donnée par un ensemble et une position (non présente dans
    * l'ensemble). *)
  val all_moves : HSet.t -> Hex.pos -> Hex.move list

  (** [accessible set elt] renvoie le sous-ensemble
    * correspondant à la composante connexe de [elt]. *)
  val accessible : HSet.t -> HSet.elt -> HSet.t

  (* Renvoie les voisins de x dans s *)
  val neighbours : HSet.t -> HSet.elt -> HSet.elt list

  (** Calcule la liste des composantes connexes à partir de x *)
  val split : HSet.t -> Hex.pos -> HSet.t list

  (** Calcul de la solution optimale à partir d'une position
    * donnée. L'entier est simplement la longueur de la liste
    * de mouvements à effectuer. *)
  val maxpath : Hex.pos -> int * Hex.move list

end
