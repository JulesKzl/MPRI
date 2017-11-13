ML = $(wildcard *.ml)
CMO = $(ML:.ml=.cmo)
all : $(CMO)
%.cmo : %.ml 
	ocamlc -c $<
