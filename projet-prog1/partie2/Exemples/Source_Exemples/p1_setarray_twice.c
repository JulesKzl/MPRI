int main() {
  int* x;
  x=malloc(8*4);
  x[0]=0;
  x[1]=0;
  x[2]=0;
  x[3]=0;
  x[3]=x[1]=7;
  printf("%d,%d,%d,%d",x[0],x[1],x[2],x[3]);
  return 0;
}
