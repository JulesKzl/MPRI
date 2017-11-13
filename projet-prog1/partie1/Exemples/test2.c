int* f(int* p) {
    p[0]++;
    p[0]++;
    return p;
}

int main() {
  int* x;
  x = malloc(8);
  x[0]=0;
  return (f(x))[0];
}
~                                                                                                                                                                                       
~         
