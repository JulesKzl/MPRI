int serie(int n, int m) {
  if (n==0) {
    throw Zero(m);
  }
  else {
    try {
      serie(n-1, m+n);
    }
    finally {
      printf(".");
    }
  }
  return 0;
}


int main() {
  try {
    serie(100, 1);
  }
  catch (Zero m) {
    printf("res: %d", m);
  }
  return 0;
}
