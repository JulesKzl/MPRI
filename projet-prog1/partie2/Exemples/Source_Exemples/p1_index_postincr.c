int main() {
  int* t;
  int x;
  t = malloc(8);
  t[0] = 7;
  x = t[0]++;
  printf("%d,%d",x,t[0]);
  return 0;
}
