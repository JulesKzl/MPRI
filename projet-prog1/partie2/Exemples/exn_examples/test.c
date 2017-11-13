#include <iostream>
#include <stdio.h>

int main()
{
int x;
x=6;
try
{
if (x != 7) throw x;
else { printf("X est OK \n"); }
}
catch (int)
{
	printf("Exception INT \n");
}
catch (...)
{
	printf("Exception indefinie. \n");
}

return 0;
} 
