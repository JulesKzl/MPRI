int is_zero(int n) {
  if (n==0)
    throw Zero(0);
  throw NonZero(0);
  return 0;
}

int main() {
  try {
    is_zero(3);
  }
  catch (NonZero i) {
    fprintf (stderr, "J'ai pas trouvé 0");
  }
  return 0;
}
