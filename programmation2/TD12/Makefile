# Tous les fichiers *.ml
ML=$(wildcard *.ml)

# Commandes pour compiler avec lwt
COMPILE = ocamlfind ocamlopt \
		  -syntax camlp4o -package lwt.unix,lwt.syntax,lambda-term
LINK = $(COMPILE) -linkpkg

default: $(ML:.ml=)

%: %.ml
	$(LINK) $< -o $@

-include .depend
.depend: $(ML)
	ocamlfind ocamldep -syntax camlp4o -package lwt.syntax $(ML) > .depend

clean:
	rm -f *.cm* *.o
