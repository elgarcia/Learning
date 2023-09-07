#include "Graphics_Console.h"
#include <stdio.h>	/*cout*/
#include <conio.h>	/*cin*/
#include <iostream>  
#include "Joc.h"
#include "Menu.h"
#include "GestioResultats.h"

using namespace std;
//=========================//
#define JUGAR '1'
#define CONFIGURAR '2'
#define PUNTUACIO '3'
#define SORTIR '4'


//=========================//

int main()
{
	
		//VARIABLES
		TipusJugador MillorsJugadors[MAX_MILLORSJUGADORS];
		char tecla = 0;
		int nivell = 1;
		int punts = 0;
		int posicio = -1;
		InicialitzarTaulaMillorJugadors(MillorsJugadors);

		// MENU
		do {
			system("cls");
			MenuPrincipal();

			//CASOS

			tecla = _getch();
			switch (tecla) {
			case JUGAR:
				system("cls");
				punts = Joc(nivell);
				system("cls");
				posicio = ComprovarSiEsTop5(MillorsJugadors, punts);
				if (posicio >= 0 && posicio <= 5)
				{
					DesplacarArray(MillorsJugadors, posicio);
					EmplenarPosicioTaula(MillorsJugadors[posicio], punts);
				}
				break;
			case CONFIGURAR:
				do
				{
					system("cls");
					MenuNivellDificultat();
					cin >> nivell;
				} while (nivell < 1 || nivell > 3);
				break;
			case PUNTUACIO:
				system("cls");
				EscriuRanking(MillorsJugadors);
				system("PAUSE");
				break;
			case SORTIR:
				break;
			}
		} while (tecla != '4');

		return 0;

	
}