int f(int n) {
  int m;
  try {
    m = 1;
    fprintf (stderr, "AHAH");
    throw Exc(10);
  }
  catch (Exc k) {
    fprintf (stderr, "oh");
    return m;
    m = 2;
  }
  finally {
    m = -2;
    fprintf (stderr, "finally");
  }
}

int main() {
  fprintf (stderr, "res: %d", f(3));
  fprintf (stderr, "res\n");
  return 0;
}
