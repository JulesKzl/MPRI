int is_zero(int n) {
  if (n==0)
    throw Zero(n);
  throw NonZero(n);
  return 0;
}

int testFin() {
  try {
    is_zero(3);
  }
  catch (NonZero i) {
    fprintf (stderr, "J'ai pas trouve 0 mais %d", i);
  }
  finally {
    fprintf (stderr, "Finally");
  }
  return 0;
}

int main() {
  testFin();
  return 0;
}
