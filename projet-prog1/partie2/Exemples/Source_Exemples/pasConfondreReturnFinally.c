int f(int n) {
  throw Exc(10);
}

int main() {
  int m;
  int l;
  m = 0;
  l = 0;
  try {
    f(10);
    m = 200;
  }
  catch (Exc k) {
    l = k;
  }
  printf("attendu: 0 10\n%d %d\n", m, l);
  return 0;
}
