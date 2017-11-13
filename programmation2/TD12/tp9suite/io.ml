(** Gestionnaire de terminal qui permet à l'utilisateur de saisir une ligne,
  * autorisant en parallèle l'affichage d'autres lignes, sans entrelacements
  * gênants.
  * Améliorations possibles:
  *   - gérer mieux l'édition de ligne;
  *   - gérer les dépassemments de buffer. *)

(** Etant donné un [terminal], permet l'affichage de lignes
  * et la saisie de façon entrelacée et lisible. *)
class virtual io terminal = object (self)

  (** Méthode virtuelle à utiliser pour traiter la saisie
    * d'une ligne complète. *)
  method virtual on_input : string -> unit Lwt.t

  val buffer = Buffer.create 256

  method reset_line =
    lwt size = LTerm.get_size terminal in
    let begin_last_line =
      { LTerm_geom.col = 0 ; row = size.LTerm_geom.rows - 1 }
    in
      LTerm.goto terminal begin_last_line  >>
      LTerm.clear_line_next terminal

  (** Affichage d'une nouvelle ligne [s].
    * La chaîne [s] doit être donnée sans \n à la fin.
    * La saisie en cours est re-affichée après la nouvelle
    * ligne. *)
  method put_line s =
    self#reset_line >>
    Lwt_io.printf "%s\n> %s" s (Buffer.contents buffer)

  val mutable old_mode = None

  (** Boucle d'interaction *)
  method run =
    lwt om = LTerm.enter_raw_mode terminal in
    old_mode <- Some om ;
    let rec input () =
      lwt event = LTerm.read_event terminal in
      match event with
        | LTerm_event.Key key ->
            if key.LTerm_key.control then
              self#reset_line >>
              Lwt_io.print "Ciao!\n" >>
              Lwt.return ()
            else
              begin match key.LTerm_key.code with
                | LTerm_key.Enter ->
                    self#reset_line >>
                    let line = Buffer.contents buffer in
                      Buffer.clear buffer ;
                      Lwt_io.print "> " >>
                      self#on_input line >>
                      input ()
                | LTerm_key.Char c ->
                    let s = CamomileLibrary.UTF8.init 1 (fun _ -> c) in
                      Buffer.add_string buffer s ;
                      Lwt_io.print s >>
                      input ()
                | _ ->
                    Lwt_io.print "?" >>
                    input ()
              end
        | LTerm_event.Resize _
        | LTerm_event.Sequence _
        | LTerm_event.Mouse _ -> input ()
    in
      self#reset_line >>
      Lwt_io.print "> " >>
      input ()

  (** Remise du terminal en état non-raw. *)
  method cleanup =
    match old_mode with
      | None -> Lwt.return ()
      | Some om ->
          old_mode <- None ;
          LTerm.leave_raw_mode terminal om

end

(** Test *)

class test term = object (self)
  inherit io term as super
  method on_input s = self#put_line ("saisie: "^s)
  method run =
    let ticker s =
      while_lwt true do
        self#put_line s >>
          Lwt_unix.sleep (Random.float 2.)
      done
    in
      Lwt.finalize
        (fun () -> Lwt.choose [ ticker "tic"; ticker "tac"; super#run ])
        (fun () -> super#cleanup)
end

let () =
  if Filename.basename Sys.argv.(0) = "io" then
    Lwt_main.run
      (lwt term =
         LTerm.create
           Lwt_unix.stdin Lwt_io.stdin
           Lwt_unix.stdout Lwt_io.stdout
           in
       (new test term)#run)
