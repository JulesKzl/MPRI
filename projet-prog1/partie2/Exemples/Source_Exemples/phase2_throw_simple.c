#ifdef MCC
#define NULL 0
#else
#include <stdio.h>
#include <stdlib.h>
#endif

int f (int n, int i) {
  fprintf(stderr, "Rang: %d, valeur: %d.\n", n, i);
  if (i < 0)
    throw Neg(n);
  if (i==0)
    throw Zero(n);
  if (i==1)
    throw Trouve(n);
  fprintf(stderr, "Pas de throw.\n");
  i%2;
  fprintf(stderr, "Modlu OK.\n");
  if(i%2)
    return f(n+1, 3*i + i/2);
  else
    return f(n+1, i/2);      
}

int main (int argc, char **argv) {
  int j;
  if (argc != 2)
    {
      fprintf (stderr, "Usage: ./exc1 <n>\n calcule a quelle iteration une suite mysterieuse termine en partant de <n>.\n");
      fflush(stderr);
      exit(10);			/* non mais! */
    }
  j = atoi(argv[1]);
  fprintf("Calcul de la serie pour n=%d.\n", j);
  try {
    f (0, j);
    fprintf (stderr, "Pas trouve...\n");
  }
  catch (Trouve n) {
    fprintf (stderr, "La suite termine (sur 1) après %d itérations en partant de %d.\n", n, j);
  }
  catch (Zero n) {
    fprintf (stderr, "La suite termine (sur 0) après %d itérations en partant de %d.\n", n, j);
  }
  catch (Neg n) {
    fprintf (stderr, "La suite plante (car < 0 (MAXINT?) après %d itérations en partant de %d.\n", n, j);
  }
  finally {
    fprintf (stderr, "Fin du calcul.\n");
  }
  fflush(stderr);
  return 0;
}
