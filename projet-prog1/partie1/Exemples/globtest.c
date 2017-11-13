#ifndef MCC
#include <stdio.h>
#include <stdlib.h>
#endif

int global_1;
int global_2;

int test_args(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j ){
	global_1 = -10;
	global_2 = 13; 
	printf("valeur de a :%d \n", a); //3
 	printf("valeur de b :%d \n", b); //-10
	printf("valeur de c :%d \n", c); //-130
	printf("valeur de d :%d \n", d); // -9
	printf("valeur de e :%d \n", e); // 14
	printf("valeur de f :%d \n", f); // 15
	printf("valeur de g :%d \n", g); //-16
	printf("valeur de h :%d \n", h); //13
	printf("valeur de i :%d \n", i); // -10
	printf("valeur de j :%d \n", j); // 4 
	return 0;
}


int main(){
	int t3;
	t3 = test_args(3, //a
		global_1, //b 
		global_2*global_1, //c
		3-2+global_1, //d
		14, //e 
		15, //f
		-16, //g 
		global_2, //h
		global_1, //i 
		4); //j
	return 0;
}
