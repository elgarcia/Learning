#include <iostream>
#include "GestioResultats.h"
#include <string.h>
using namespace std;

#define MAX_MILLORSJUGADORS 5

//Referent a les millors puntuacions

void InicialitzarTaulaMillorJugadors(TipusJugador MillorsJugadors[]) {
	for (int i = 0; i<MAX_MILLORSJUGADORS; i++)
	{
		strcpy_s(MillorsJugadors[i].Nom, "--------------");
		MillorsJugadors[i].puntuacio = 0;
	}
}

int ComprovarSiEsTop5(TipusJugador MillorsJugadors[], int punts)
{
	int i = 0;
	int trobat = 0;
	do
	{
		if (MillorsJugadors[i].puntuacio < punts)
			trobat = 1;
		i++;
	} while ((i<MAX_MILLORSJUGADORS) && (!trobat));
	if (trobat)
		return (i - 1);
	else
		return -1;
}void DesplacarArray(TipusJugador MillorsJugadors[], int posicio)
{
	for (int i = MAX_MILLORSJUGADORS - 1; i>posicio; i--)
	{
		//Copiem un per un el nom i la puntuació al jugador anterior del array fins arribar a la posició concreta
		strcpy_s(MillorsJugadors[i].Nom, MillorsJugadors[i - 1].Nom);
		MillorsJugadors[i].puntuacio = MillorsJugadors[i - 1].puntuacio;
	}
}void EmplenarPosicioTaula(TipusJugador &PosicioAOmplir, int punts)
{
	cout << "--------Entra el teu nom--------" << endl;
	cin >> PosicioAOmplir.Nom;
	(PosicioAOmplir).puntuacio = punts;
}

void EscriuRanking(TipusJugador MillorsJugadors[])
	{
	int i = 0;
	for (i = 0; i < MAX_MILLORSJUGADORS; i++) {
		cout << i + 1 << ".- " << MillorsJugadors[i].Nom << "-------" << MillorsJugadors[i].puntuacio << endl;
		}
	}