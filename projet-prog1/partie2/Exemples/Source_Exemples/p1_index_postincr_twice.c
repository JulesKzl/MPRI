int main() {
  int* t;
  t = malloc(8*3);
  t[0] = 7;
  t[1] = 1;
  t[0] = 9;
  t[t[1]++]++;
  printf("%d",t[1]);
  return 0;
}
