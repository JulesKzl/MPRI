int main() {
  int x;
  int y;
  x=0;
  y=x++;
  printf("%d,%d;",x,y);
  x=0;
  y=++x;
  printf("%d,%d;",x,y);
  x=0;
  y=x--;
  printf("%d,%d;",x,y);
  x=0;
  y=--x;
  printf("%d,%d;",x,y);
  return 0;
}
