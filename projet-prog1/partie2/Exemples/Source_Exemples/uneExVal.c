int is_zero(int n) {
  if (n==0)
    throw Zero(n);
  throw NonZero(n);
  return 0;
}

int main() {
  try {
    is_zero(3);
  }
  catch (NonZero i) {
    fprintf (stderr, "J'ai pas trouve 0 mais %d", i);
  }
  return 0;
}
