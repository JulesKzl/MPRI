int main() {
  int* t;
  t=malloc(8);
  t[0]=0;
  // Make sure that the left-value
  // is computed only once.
  t[printf("1"),0]++;
  return 0;
}
