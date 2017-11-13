int c;

int main (int argc, char **argv)
{
  int d;
  c = 20;
  d = 10;
  printf("%d %d ", d, c);
  if (1)
    {
      int c;
      c = 2;
      printf("%d %d ", d, c);
    }
  return(0);
}
