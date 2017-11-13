int i;

int rule_33()
{
 try{return 1;}finally{i=99;}
 return 0;
}

int main()
{
	return rule_33();
}
/*
int main()
{
 try{if(rule_37_1()) printf("  [+] Rule 37 : p |- c' => (p', *, V) ... OK\n");}
 catch(E x){printf("  [x] Wrong implementation of rule 37 !\n");}
}
*/

