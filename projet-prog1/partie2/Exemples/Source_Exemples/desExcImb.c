int ex(int n, int m) {
  try {
    try {
      try {
	throw Exc(10);
      }
      catch (Ze m) {}
      finally { printf("fin1 "); }
    }
    catch (Ze m) {}
    finally { printf("fin2 "); }
  }
  catch (Exc m) {
    printf("throw rattrape: %d", m);
  }
  finally { printf("fin3 "); }
  return 0;
}


int main() {
  ex(10, 50);
  return 0;
}
