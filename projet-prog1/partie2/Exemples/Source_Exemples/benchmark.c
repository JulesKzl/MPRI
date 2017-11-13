int compteur;

int f()
{
	try
	{
		compteur++;;
		throw Allonsy(45);
	}
	catch(OnNeVeutRienAttrapperIciEnFait n)
	{
		printf("Problème : %d\n", n);
	}
	finally
	{
		compteur++;
	}

	return 12;
}

int main()
{
	compteur = 0;
	try
	{
		try
		{
			try
			{
				try
				{
					compteur++;
					throw Test(8);
					printf("Il y a un problème si ça s'affiche !\n");
				}
				catch(Test n)
				{
					if(n == 8) compteur++;
					else printf("Tu as trouvé %d au lieu de 8\n", n);
				}
				finally
				{
					compteur++;
					throw Autre(15);
					printf("Pareil, on ne doit pas voir ça\n");
				}
				printf("Est-ce que ça ça apparaît ? Normalement pas.\n");
			}
			catch(Autre n)
			{
				if(n == 15) compteur++;
				else printf("Autre avec la valeur %d au lieu de 15 !\n", n);
				f();
				printf("Tu ne me liras jamais et pourtant je prends de la place inutilement !\n");
			}
		}
		catch(Anything n)
		{
			printf("On ne passe pas par là\n");
		}
		finally
		{
			compteur++;
		}
	}
	catch(Allonsy n)
	{
		if(n==45) compteur++;
		else printf("Erreur : %d et pas 45 !\n", n);
	}
	finally
	{
		compteur++;
		try
		{
			compteur++;
		}
		catch(CEstBeteDEtreObligeDeMettreQuelqueChoseIciEnfinEnMemeTempsCeTryEstUselessCEstVrai n)
		{
			printf("Si tu me vois, tu as perdu !\n");
		}
		finally
		{
			compteur++;
			try
			{
				compteur++;
				throw Inception(9);
				printf("fail\n");
			}
			catch(Inception n)
			{
				if(n==9) compteur++;
				else printf("Tu devrais trouver 9 pas %d\n", n);
				try
				{
					try
					{
						throw Pardon(190);
					}
					catch(RienDuTout n)
					{
						printf("Encore perdu\n");
					}
				}
				catch(Pardon n)
				{
					if(n == 190) compteur++;
					else printf("Tu ne sera jamais pardonné, il te faut 190, pas %d\n", n);
				}
			}
		}
	}
	printf("Tu as validé %d points sur 14.\n", compteur);
	if(compteur == 14) printf("Félicitations !\n");

	return 0;
}
