#ifndef MCC
#include <stdio.h>
#include <stdlib.h>
#endif



int fact(int n) 
{
	if (n==0) 
	{ return 1; } 
	else
	{
	return (n*fact(n-1));
	}
}


int main ()
{
	return fact(5);
}

