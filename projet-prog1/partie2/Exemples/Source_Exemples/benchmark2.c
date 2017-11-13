int compteur;
int main()
{
	try
	{
	}
	finally
	{
		try
		{
		}
		finally
		{
			try
			{
				throw Inception(9);
			}
			catch(Inception n) {}
		}
	}
	printf("JLO");
	return 0;
}
