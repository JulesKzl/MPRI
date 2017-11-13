// Res: @@@@A@@@@
int d;

int jediv (int a, int b, int c) {
  d = a/b;
  printf("args: %d, %d", a, b);
  return d;
}

int main () {
  int i;
  int j;
  i = 12;
  j = 5;
  printf("jediv: %d", jediv(i,j,10));
  return 0;
}
