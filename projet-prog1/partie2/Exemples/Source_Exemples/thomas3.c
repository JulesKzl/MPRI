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

//////////////////////////////////  Test 2 ////////////////////////////////////

  compt = 1;
  try{
      f(compt);
  }
  catch(c n){printf( "ERROR\n");}
  finally{compt++;}

  printf("Test 2: Try et return imbriques: \t --> Compt:: %d (normalement 2)\n", compt);

//////////////////////////////////  Test 3 ////////////////////////////////////

  printf("Test 3: Return de try prevaut: \t\t --> Compt:: %d (normalement 1)\n", g(0));

//////////////////////////////////  Test 4 ////////////////////////////////////

  try{
    compt = h(0);
  }
  catch (N n){compt = n;}
  printf("Test 4: Throw vs return : \t\t --> Compt:: %d (normalement 1)\n", compt);

//////////////////////////////////  Test 5 ////////////////////////////////////

  printf("Test 5: Return de catch prevaut: \t --> Compt:: %d (normalement 2)\n", i(0));

 //////////////////////////////////  Test 6 ///////////////////////////////////

  return 0;
  try{
    compt = j(0);
  }
  catch(a n){printf( "ERROR\n");}
  catch(N n){compt = 1;}
  catch(b n){printf( "ERROR\n");}
 printf("Test 6: Throw du catch prevaut: \t --> Compt:: %d (normalement 1)\n", compt);

//////////////////////////////////  Test 7  ///////////////////////////////////
try{
  b=k();
}
catch(E n){printf("ok\n");}
 printf("Test 7: Test de Luca (ordre finally) \t -> %d (normalement 0)\n", b);
  return 0;
}
