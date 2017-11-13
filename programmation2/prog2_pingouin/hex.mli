
type pos = int * int
type 'a grid = 'a array array

(** Directions *)

type dir =  N | NE | SE | S | SW | NW

(** Liste de toutes les directions possibles *)
val all_directions : dir list

val dir_to_string : dir -> string 

(** Mouvements *)

type move = dir * int
val move : pos -> dir -> pos
val move_n : pos -> move -> pos

(** [path_of_moves p moves] est la liste des positions
  * obtenues par applications successives des mouvements
  * de [moves] à partir de [p]. *)
val path_of_moves : pos -> move list -> pos list

(** Entrées/sorties *)

(** Affichage d'une grille de caractères. *)
val pp_grid : Format.formatter -> char grid -> unit

(** Transforme une grille char en bool *)
val grid_char_of_grid_bool : pos -> bool grid -> char grid

(** Lecture d'une grille sur un in_channel.
  * La grille produite devra toujours avoir un pourtour
  * vide, même si cela n'est pas le cas dans le problème
  * d'entrée.*)
val from_channel : in_channel -> pos * bool grid
