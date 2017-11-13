// TODO ce test est interdit par les instructions de Jean
// qui excluent deux déclarations toplevel avec le même nom
int x;
int f() {
  x=3;
  return 0;
}
int x;
int g() {
  x=4;
  return 0;
}
int main() {
  g();
  f();
  printf("%d",x); // attendu : 4
  return 0;
}
