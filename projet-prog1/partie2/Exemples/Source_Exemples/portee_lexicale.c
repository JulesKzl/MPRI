int c;

int f (int n) {
  if (n==1) {
    int c;
    c = 10;
    return c;
  }
  else {
    int c;
    c = 5;
    return c;
  }
}

int main () {
  int c;
  printf("%d", f(1));
  printf("%d", f(10));
  return 0;
}
