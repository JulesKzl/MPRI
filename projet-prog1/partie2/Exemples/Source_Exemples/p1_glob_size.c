int x;
int y;
int z;
int main() {
  x=1;
  y=0;
  for(z=0;z<63;z++) {
    x=2*x+1;
    // printf("0x%x\n",x);
  }
  printf("%x,%x",x,y); // y should be 0
  return 0;
}
