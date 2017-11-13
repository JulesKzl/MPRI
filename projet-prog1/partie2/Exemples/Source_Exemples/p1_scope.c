int x;
int init() {
  x=7;
  return 0;
}
int f() {
  int x;
  return 0;
}
int g() {
  int y;
  y=3;
  // Here x should refer to the global variable
  // and not to the first local variable,
  // i.e. the environment from within f should not
  // be used anymore.
  return x;
}
int main() {
  init();
  printf("%d",g());
  return 0;
}
