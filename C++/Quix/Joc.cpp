#include "Graphics_Console.h"
#include "Joc.h"

char LlegirEvent()
{
	unsigned char tecla = 0;
	tecla = _getch(); //Lectura tecla
	if (tecla == TECLA_ESTESA) // S'ha premut una tecla estesa
	{
		tecla = _getch(); // Llegir segona part tecla
	}
	return tecla;
}

// Funcio Per la aleatorietat del qix
int Aleatori(int min, int max)
{
	return (rand() % (max - min + 1) + min);
}

int Joc(int nivell)
{

	//inicialtzem pantalla y definim variables
	HANDLE hScreen;
	hScreen = GetStdHandle(STD_OUTPUT_HANDLE);
	InitScreen(hScreen);
	char tecla = 0;
	bool viu = true;
	int vides = 3;
	int punts = 0;
	do {

		int CursorX = INICI_X + 2;
		int CursorY = FI_Y;

		int XocStix = 0;
		int Area = 0;
		int AreaTotal = 0;
		bool nivellcompletat = false;		int VelocitatQix;
		int NCops = 0;		srand((unsigned)time(NULL)); //utilitzeu srand per fer efectiva l’aleatorietat
		int DirQixX;
		int DirQixY;
		int qixX = 20;
		int qixY = 13;
		int IniciX = INICI_X, FiX = FI_X;
		int IniciY = INICI_Y, FiY = FI_Y;

		int DirSTIX = MOV_PARAT;

		viu = true;
		nivellcompletat = false;
		AreaTotal = 0;
		Area = 0;
		VelocitatQix = VELOCITATPC - (nivell*(VELOCITATPC / 5));

		InicialitzarDirQix(DirQixX, DirQixY);

		system("cls"); //limpia pantalla

		Taulell(hScreen);
		InfoPuntsPartida(punts, hScreen);
		InfoNivellPartida(nivell, hScreen);
		InfoVidesPartida(vides, hScreen);		PintarCursor(CursorX, CursorY, hScreen);		PintarQIX(qixX, qixY, hScreen);		do {
			if (_kbhit()) //detecta teclas
			{
				tecla = LlegirEvent();
				TractarEvent(tecla, CursorX, CursorY, qixX, qixY, IniciX, IniciY, FiX, FiY, DirSTIX, Area, hScreen);
				if (Area)
				{ //Sumem la Area calculada als punts i guardem el AreaTotal
					punts += Area;
					InfoPuntsPartida(punts, hScreen);
					AreaTotal += Area;
					Area = 0;
					if (AreaTotal >= (3 * AREARECTANGLE / 4))//Per guanyar, comparem AreaTotal
						nivellcompletat = true;
				}
			}
			NCops++; //Abans teníem un Sleep(50)
			if (NCops >= VelocitatQix) { //Si el comptador porta N iteracions, movem Qix
				MoureQIX(qixX, qixY, DirQixX, DirQixY, IniciX, IniciY, FiX, FiY, hScreen);
				if (DirSTIX != MOV_PARAT) { //Si estem creant un stix, mirem si xoca amb el Qix
					XocStix = QiXXocStix(qixX, qixY, CursorX, CursorY, DirSTIX);
					if (XocStix) //Ha xocat, doncs no estem vius
						viu = false;				}				NCops = 0; //Resetem el contador
			}
		} while (viu && !nivellcompletat && tecla != TECLA_ESC);		if (!viu) vides--; viu = 1;
		if (nivellcompletat) nivell++;
		Sleep(750);
	} while (tecla != TECLA_ESC && vides > 0);	if (vides <= 0 || tecla == TECLA_ESC) {
		GameOver(hScreen);		Sleep(2000);	}	return punts;}


void Taulell(HANDLE hScreen)
{
	//Pintem el limit del taulell del joc

	for (int x = INICI_X; x <= FI_X; x++)
	{
		GotoXY(x, INICI_Y, hScreen);
		TextColor(LIGHTGREY, BLACK, hScreen);
		cout.put(MUR);
	}


	for (int x = INICI_X; x <= FI_X; x++)
	{
		GotoXY(x, FI_Y, hScreen);
		TextColor(LIGHTGREY, BLACK, hScreen);
		cout.put(MUR);
	}

	for (int x = INICI_Y; x <= FI_Y; x++)
	{
		GotoXY(INICI_X, x, hScreen);
		TextColor(LIGHTGREY, BLACK, hScreen);
		cout.put(MUR);
	}

	for (int x = INICI_Y; x <= FI_Y; x++)
	{
		GotoXY(FI_X, x, hScreen);
		TextColor(LIGHTGREY, BLACK, hScreen);
		cout.put(MUR);
	}

}
void InfoPuntsPartida(int Punts, HANDLE hScreen)
{
	GotoXY(INICI_X + 2, INICI_Y - 4, hScreen);
	cout << "Punts: " << Punts;
}
void InfoVidesPartida(int vides, HANDLE hScreen)
{
	// Feu el mateix que a InfoPuntsPartida però amb vides
	GotoXY(INICI_X + 2, INICI_Y + (-2), hScreen);
	TextColor(LIGHTGREY, BLACK, hScreen);
	cout << "Vides: " << vides;
}
void InfoNivellPartida(int nivell, HANDLE hScreen) {
	GotoXY(FI_X + (-8), INICI_Y + (-4), hScreen);
	TextColor(LIGHTGREY, BLACK, hScreen);
	cout << "Nivell: " << nivell;
}

void GameOver(HANDLE hScreen) {
	GotoXY(INICI_X + 12, INICI_Y + 10, hScreen);
	TextColor(LIGHTRED, BLACK, hScreen);
	cout << "GAME OVER";
	TextColor(LIGHTGREY, BLACK, hScreen);
}

//pintar cuadrats del taulell
void PintarObjecte(int X, int Y, char Obj, int ColorObj, HANDLE hScreen)
{
	TextColor(ColorObj, BLACK, hScreen);
	GotoXY(X, Y, hScreen);
	cout.put(MUR);
}

// pinta de negra
void EsborrarObjecte(int X, int Y, char Obj, HANDLE hScreen)
{
	TextColor(BLACK, BLACK, hScreen);
	GotoXY(X, Y, hScreen);
	cout.put(MUR);
}

void PintarQIX(int qixX, int qixY, HANDLE hScreen)
{
	PintarObjecte(qixX, qixY, MUR, RED, hScreen);
}

void EsborrarQIX(int qixX, int qixY, HANDLE hScreen)
{
	EsborrarObjecte(qixX, qixY, MUR, hScreen);
}

void PintarCursor(int CursorX, int CursorY, HANDLE hScreen)
{
	PintarObjecte(CursorX, CursorY, MUR, LIGHTBLUE, hScreen);
}

void EsborrarCursor(int CursorX, int CursorY, HANDLE hScreen)
{
	PintarObjecte(CursorX, CursorY, MUR, LIGHTGREY, hScreen);
}//apliquem la funció de aleatori per el qixvoid InicialitzarDirQix(int &DirQixX, int &DirQixY)
{
	DirQixX = Aleatori(-1, 1);
	DirQixY = Aleatori(-1, 1);
	while (DirQixX == 0 || DirQixY == 0)
	{
		DirQixX = Aleatori(-1, 1);
		DirQixY = Aleatori(-1, 1);
	}}void MoureQIX(int &qixX, int &qixY, int &DirQixX, int &DirQixY, int IniciX, int IniciY, int FiX, int FiY, HANDLE hScreen)
{
	static int RecorregutQix = 0;

	//Esborrem el Qix
	EsborrarQIX(qixX, qixY, hScreen);

	if (!RecorregutQix) {
		//Inicialitzem Qix de manera aleatoria
		InicialitzarDirQix(DirQixX, DirQixY);
		RecorregutQix = Aleatori(5, 20);
	}

	//Revisem si tocarà amb els limits
	if (qixX + DirQixX == IniciX || qixX + DirQixX == FiX)
		DirQixX *= -1;
	if (qixY + DirQixY == IniciY || qixY + DirQixY == FiY)
		DirQixY *= -1;

	//Actualitzem la posició del Qix i el pintem
	qixX = qixX + DirQixX;
	qixY = qixY + DirQixY;

	//Contem que el Qix ha fet una passa
	RecorregutQix--;
	PintarQIX(qixX, qixY, hScreen);
}

//moure cursor
void TractarEvent(char tecla, int &CursorX, int &CursorY, int qixX, int qixY, int &IniciX, int &IniciY, int &FiX, int &FiY, int &DirSTIX, int &Area, HANDLE hScreen)
{
	int Stix;
	switch (tecla)
	{
	case TECLA_DRETA:
		if (CursorX + 1 <= FiX && (CursorY == IniciY || CursorY == FiY))
		{
			MoureCursor(CursorX, CursorY, 1, 0, hScreen); //moure el cursor cap a la dreta
		}
		break;
	case TECLA_ESQUERRA:
		if (CursorX - 1 >= IniciX && (CursorY == IniciY || CursorY == FiY))
		{
			MoureCursor(CursorX, CursorY, -1, 0, hScreen); //moure el cursor cap a l'esquerra
		}
		break;
	case TECLA_ADALT:
		if (CursorY - 1 >= IniciY && (CursorX == IniciX || CursorX == FiX))
		{
			MoureCursor(CursorX, CursorY, 0, -1, hScreen); //moure el cursor cap adalt
		}
		break;
	case TECLA_ABAIX:
		if (CursorY + 1 <= FiY && (CursorX == IniciX || CursorX == FiX))
		{
			MoureCursor(CursorX, CursorY, 0, 1, hScreen); //moure el cursor cap a abaix
		}
		break;

	case TECLA_CTRDRETA:
		Stix = MovimentSTIX_Dreta(CursorX, CursorY, IniciX, IniciY, FiX, FiY, DirSTIX, hScreen);
		if (Stix) {
			//Actualitzem els nous límits
			if (CursorY > qixY) {
				Area = (FiX - IniciX)*(FiY - CursorY);
				FiY = CursorY; //Cas de crear horitzontalment el Stix per sobre del Qix
			}
			else {
				Area = (FiX - IniciX)*(CursorY - IniciY);
				IniciY = CursorY; //Cas de crear horitzontalment el Stix per sota del Qix
			}
		}
		break;

	case TECLA_CTRESQUERRA:
		MovimentSTIX_Esquerra(CursorX, CursorY, IniciX, IniciY, FiX, FiY, DirSTIX, hScreen);
		Stix = MovimentSTIX_Esquerra(CursorX, CursorY, IniciX, IniciY, FiX, FiY, DirSTIX, hScreen);

		if (Stix)
		{
			if (qixY < CursorY)
			{
				Area = (FiX - IniciX)*(FiY - CursorY);
				FiY = CursorY;
			}
			else {
				Area = (FiX - IniciX)*(CursorY - IniciY);
				IniciY = CursorY;
			}
		}
		break;
	case TECLA_CTRADALT:
		Stix = MovimentSTIX_Adalt(CursorX, CursorY, IniciX, IniciY, FiX, FiY, DirSTIX, hScreen);
		if (Stix) {
			//Actualitzem els nous límits
			if (CursorX > qixX) {
				Area = (FiY - IniciY)*(FiX - CursorX);
				FiX = CursorX; //Cas de crear verticalment el Stix per la dreta del Qix
			}
			else {
				Area = (FiY - IniciY)*(CursorX - IniciX);
				IniciX = CursorX; //Cas de crear verticalment el Stix per l’esquerra del Qix
			}
		}
		break;

	case TECLA_CTRABAIX:
		Stix = MovimentSTIX_Abaix(CursorX, CursorY, IniciX, IniciY, FiX, FiY, DirSTIX, hScreen);
		if (Stix) {
			//Actualitzem els nous límits
			if (CursorX < qixX) {
				Area = (FiY - IniciY)*(CursorX - IniciX);
				IniciX = CursorX; //Cas de crear verticalment el Stix per la dreta del Qix
			}
			else {
				Area = (FiY - IniciY)*(FiX - CursorX);
				FiX = CursorX; //Cas de crear verticalment el Stix per l’esquerra del Qix
			}
		}
		break;
	}
}

void MoureCursor(int &CursorX, int &CursorY, int DirCursorX, int DirCursorY, HANDLE hScreen) //Els "&" son per actualitzar els punts on es troba el nostre cursor cada cop que fem una "passa".
{
	// CODI DE MOVIMENT DEL CURSOR
	//Borrem el cursor
	EsborrarCursor(CursorX, CursorY, hScreen);
	//Actualitzem la posició
	CursorX += DirCursorX;
	CursorY += DirCursorY;
	//Pintem el cursor
	PintarCursor(CursorX, CursorY, hScreen);

}

//definim moviments del stix, Borrar, actualizar, pintar

int MovimentSTIX_Dreta(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen)
{
	int DirCursorX, DirCursorY;
	int StixAconseguit = 0;
	if ((CursorX == IniciX) && (DirSTIX == MOV_PARAT))
	{
		DirCursorX = 1; DirCursorY = 0;
		MoureCursor(CursorX, CursorY, DirCursorX, DirCursorY, hScreen);
		DirSTIX = MOV_DRETA;
	}
	else
	{
		if ((CursorX<FiX) && (DirSTIX == MOV_DRETA))
		{
			PintarStix(CursorX, CursorY, hScreen);
			CursorX++;
			PintarCursor(CursorX, CursorY, hScreen);
			if (CursorX == FiX)
			{
				DirSTIX = MOV_PARAT;
				StixAconseguit = 1;
			}
		}
	}
	return StixAconseguit;
}

int MovimentSTIX_Esquerra(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen)
{
	int DirCursorX = -1;
	int DirCursorY = 0;
	int StixAconseguit = 0;

	if ((DirSTIX == MOV_PARAT) && (CursorX == FiX))
	{
		DirSTIX = MOV_ESQUERRA;
		MoureCursor(CursorX, CursorY, DirCursorX, DirCursorY, hScreen);
	}
	else
	{
		if ((DirSTIX == MOV_ESQUERRA) && (CursorX > IniciX))
		{
			PintarStix(CursorX, CursorY, hScreen);
			CursorX--;
			PintarCursor(CursorX, CursorY, hScreen);
		}
		if (CursorX == IniciX)
		{
			StixAconseguit = 1;
			DirSTIX = MOV_PARAT;
		}
	}


	return StixAconseguit;
}

int MovimentSTIX_Adalt(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen)
{
	int DirCursorX, DirCursorY;
	int StixAconseguit = 0;
	if ((CursorY == FiY) && (DirSTIX == MOV_PARAT))
	{
		DirCursorX = 0; DirCursorY = -1;
		MoureCursor(CursorX, CursorY, DirCursorX, DirCursorY, hScreen);
		DirSTIX = MOV_ADALT;
	}
	else
	{
		if ((CursorY>IniciY) && (DirSTIX == MOV_ADALT))
		{
			PintarStix(CursorX, CursorY, hScreen);
			CursorY--;
			PintarCursor(CursorX, CursorY, hScreen);
			if (CursorY == IniciY)
			{
				DirSTIX = MOV_PARAT;
				StixAconseguit = 1;
			}
		}
	}
	return StixAconseguit;
}
int MovimentSTIX_Abaix(int &CursorX, int &CursorY, int IniciX, int IniciY, int FiX, int FiY, int &DirSTIX, HANDLE hScreen)
{
	int DirCursorX, DirCursorY;
	int StixAconseguit = 0;
	if ((CursorY == IniciY) && (DirSTIX == MOV_PARAT))
	{
		DirCursorX = 0; DirCursorY = 1;
		MoureCursor(CursorX, CursorY, DirCursorX, DirCursorY, hScreen);
		DirSTIX = MOV_ABAIX;
	}
	else
	{
		if ((CursorY<FiY) && (DirSTIX == MOV_ABAIX))
		{
			PintarStix(CursorX, CursorY, hScreen);
			CursorY++;
			PintarCursor(CursorX, CursorY, hScreen);
			if (CursorY == FiY)
			{
				DirSTIX = MOV_PARAT;
				StixAconseguit = 1;
			}
		}
	}
	return StixAconseguit;
}

void PintarStix(int CursorX, int CursorY, HANDLE hScreen)
{
	PintarObjecte(CursorX, CursorY, MUR, LIGHTGREY, hScreen);
}

int QiXXocStix(int qixX, int qixY, int CursorX, int CursorY, int DirStix)
{
	int xoc = 0;
	switch (DirStix)
	{

	case MOV_DRETA:
		if (qixY == CursorY && qixX <= CursorX)
			xoc = 1;
		break;
	case MOV_ESQUERRA:
		if (qixY == CursorY && qixX >= CursorX)
			xoc = 1;
		break;
	case MOV_ADALT:
		if (qixX == CursorX && qixY <= CursorY)
			xoc = 1;
		break;
	case MOV_ABAIX:
		if (qixX == CursorX && qixY >= CursorY)
			xoc = 1;
		break;
	}
	return(xoc);
}