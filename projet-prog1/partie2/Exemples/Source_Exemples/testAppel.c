// Res: @@@@@A@@@@
int x;

int y;

int print_int_ (int x1, int x2, int x3, int x4, int x5, int x6, int x7, int x8, int x9)
{
  printf("1:%d - 2:%d - 8:%d - 7:%d\n  argv[1]:%d\n",x1, x2, x8, x7, x9);
  return 0;
}

int main(int argc, int **argv)
{
  int z;
  z = atoi(argv[1]);
  print_int_(1,2,3,4,5,6,7,8,z);
  return 0;
}
