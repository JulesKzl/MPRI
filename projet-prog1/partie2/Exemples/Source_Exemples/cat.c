// Res: @@@@Je veux afficher ceci.@@@@
#ifdef MCC
#define FILE char
// pipeau: un FILE est quelque chose de plus complique, normalement...
#define EOF (-1)
// ca, par contre, c'est la vraie valeur de EOF.

#else
#include <stdio.h>
#include <stdlib.h>
#endif

int main (int argc, char **argv)
{
  int i, c;
  FILE *f;
  for (i=1; i<argc; i++)
    {
      f = fopen (argv[i], "r");
      while ((c = fgetc (f))!= -1)
	{
	  fputc (c, stdout);
	}
      fclose (f);
    }
  fflush (stdout);
  exit (0);
}
