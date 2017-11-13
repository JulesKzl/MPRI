#ifdef MCC
#define NULL 0
#else
#include <stdio.h>
#include <stdlib.h>
#endif

int tab;
int b;
int f(int a){
  return a++;
}

int g(int a){
  try{
    return a;
  }
  catch(c n){printf( "ERROR\n");}
  finally{return (a+1);}
}


int h(int a){
  try{
    return a;
  }
  catch(c n){printf( "ERROR\n");}
  finally{throw N 1}
}

int i(int a){
  try{
    throw c 2;
    return a;
  }
  catch(c n){return n;}
  finally{return 3;}
}

int j(int a){
  try{
    throw c 2;
    return a;
  }
  catch(c n){throw N n;}
  finally{return 3;}
}

int k(){
  try{
    return tab;
  }
  catch(c n){throw N n;}
  finally{printf("coucou\n");tab = 100000;throw E 1;}
}

int main (int argc, char **argv) {
  int compt;
  tab = 0;
//////////////////////////////////  Test 1 ////////////////////////////////////

  compt = 0;
  try {
    try{
      try{
            throw b 2;
      }
      catch(c n){printf( "ERROR\n");}
    }
    catch(b n){compt++;}
    finally{compt++;}
  }
  catch (a n) {printf( "ERROR\n");}
  finally{compt++; }

  printf("Test 1: 3 try imbriques: \t\t --> Compt:: %d (normalement 3)\n", compt);

  return 0;
}
