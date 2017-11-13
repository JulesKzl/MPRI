int f(int x, int y) {
  return y;
}
int main() {
  int x;
  x=f(f(1,2),f(3,4));
  printf("%d",x);
  return 0;
}
