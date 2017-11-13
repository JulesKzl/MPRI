// Res: @@@@A@@@@
int x;

int y;

int print_int_ (int x1, int x2, int x3)
{
  printf("1:%d - 2:%d - argv[1]:%d\n", x1, x2, x3);
  return 0;
}

int main(int argc, int **argv)
{
  int z;
  z = atoi(argv[1]);
  print_int_(1,2,z);
  return 0;
}
