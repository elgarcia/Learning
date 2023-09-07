#include "Graphics_Console.h"
#include <stdio.h>	/*cout*/
#include <conio.h>	/*cin*/
#include <iostream>
#include <time.h>
using namespace std;

#define MUR 219

#define INICI_X 4
#define INICI_Y 5


#define FI_X 36
#define FI_Y 25 


#define TECLA_ESC 27
#define TECLA_ESTESA 224


#define TECLA_ESQUERRA 75
#define TECLA_DRETA 77
#define TECLA_ADALT 72
#define TECLA_ABAIX 80


#define MOV_PARAT 0
#define MOV_DRETA 2
#define MOV_ESQUERRA 4
#define MOV_ADALT 1
#define MOV_ABAIX 3

#define TECLA_CTRESQUERRA 'a'
#define TECLA_CTRDRETA 'd'
#define TECLA_CTRADALT 'w'
#define TECLA_CTRABAIX 's'

#define AREARECTANGLE (FI_X-INICI_X)*(FI_Y-INICI_Y)
#define VELOCITATPC 6000

int Joc(int nivell);
void Taulell(HANDLE hScreen);
void InfoPuntsPartida(int Punts, HANDLE hScreen);
void InfoVidesPartida(int Vides, HANDLE hScreen);
void InfoNivellPartida(int nivell, HANDLE hScreen);
void GameOver(HANDLE hScreen);

void PintarObjecte(int X, int Y, char Obj, int ColorObj, HANDLE hScreen);
void EsborrarObjecte(int X, int Y, char Obj, HANDLE hScreen);

void PintarQIX(int qixX, int qixY, HANDLE hScreen);
void PintarCursor(int cursorX, int cursorY, HANDLE hScreen);
void EsborrarQIX(int qixX, int qixY, HANDLE hScreen);
void EsborrarCursor(int CursorX, int CursorY, HANDLE hScreen);

char LlegirEvent();

int Aleatori(int min, int max);

//MOURE QIX

void MoureQIX(int &qixX, int &qixY, int &DirQixX, int &DirQixY, int IniciX, int IniciY, int FiX, int FiY, HANDLE hScreen);

void MoureCursor(int &CursorX, int &CursorY, int DirCursorX, int DirCursorY, HANDLE hScreen);

void TractarEvent(char tecla, int &CursorX, int &CursorY, int qixX, int qixY, int &IniciX, int &IniciY, int &FiX, int &FiY, int &DirSTIX, int &Area, HANDLE hScreen);

void InicialitzarDirQix(int &DirQixX, int &DirQixY);



//MOV STIX

int MovimentSTIX_Dreta(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen);

int MovimentSTIX_Esquerra(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen);

int MovimentSTIX_Adalt(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen);

int MovimentSTIX_Abaix(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen);

void PintarStix(int CursorX, int CursorY, HANDLE hScreen);

//XOC STIX
int QiXXocStix(int qixX, int qixY, int cursorX, int cursorY, int DirStix);
