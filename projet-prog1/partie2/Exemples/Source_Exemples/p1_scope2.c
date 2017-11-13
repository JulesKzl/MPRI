int x;
int init() {
  x=7;
  return 0;
}
int f(int x) {
  return 0;
}
int g(int y) {
  return x;
}
int main() {
  init();
  printf("%d",g(3));
  return 0;
}
