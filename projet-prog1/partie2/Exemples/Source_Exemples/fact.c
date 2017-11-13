// Res: @@@@@A@@@@
#ifndef MCC
#include <stdio.h>
#include <stdlib.h>
#endif

int fact (int n)
{
  int res;

  res = 1;
  while (n!=0)
    {
      res = res * n;
      n--;
    }
  return res;
}

int div (int n)
{
  return n/5;
}

int main (int argc, char **argv)
{
  if (argc!=2)
    {
      fprintf (stderr, "Usage: ./fact <n>\ncalcule et affiche la factorielle de <n>.\n");
      fflush (stderr);
      exit (10); /* non mais! */
    }
  {
    int n, res;

    n = atoi (argv[1]); /* conversion chaine -> entier. */
    if (n<0)
      {
	fprintf (stderr, "Ah non, quand meme, un nombre positif ou nul, s'il-vous-plait...\n");
	fflush (stderr);
	exit (10);
      }
    res = fact (n);
    printf ("La factorielle de %d vaut %d (en tout cas, modulo 2^32...).\n",
	    n, res);
    printf("47/5 vaut %d", div(45));
  }
  return 0;
}
