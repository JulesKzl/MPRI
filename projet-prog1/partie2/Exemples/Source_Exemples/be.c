
int main()
{
	int compteur;
	compteur = 0;
	try {}
	finally
	{
		compteur++;
		try {}
		finally
		{
			compteur++;
			try {}
			catch(Inception n) {}
		}
	}
	printf("OK");
	return 0;
}
