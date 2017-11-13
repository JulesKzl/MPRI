int f(int n) {
  int m;
  int l;
  l = 1000;
  try {
    m = 1;
    fprintf (stderr, "AHAH");
    throw Exc(10);
  }
  catch (Exc k) {
    fprintf (stderr, "oh");
    l = m;
    m = 2;
  }
  finally {
    m = -2;
    fprintf (stderr, "finally");
  }
  return l = -100;
}

int main() {
  fprintf (stderr, "res: %d", f(3));
  fprintf (stderr, "res\n");
  return 0;
}
