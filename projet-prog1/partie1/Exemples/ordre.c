#ifndef MCC
#include <stdio.h>
#include <stdlib.h>
#endif


int main (int argc, char **argv)
{
  int i, j;
  j = (i=3) + (i=4);
  printf ("Valeur de j=%d (normalement 7), valeur de i=%d.\n", j, i);
  fflush (stdout);
  return 0;
}
