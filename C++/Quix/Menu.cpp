#include <iostream>
#include "Graphics_Console.h"
using namespace std;

// referent al menú


void MenuPrincipal() {
	HANDLE hScreen;
	hScreen = GetStdHandle(STD_OUTPUT_HANDLE);
	TextColor(CYAN, BLACK, hScreen);
	cout << "------------- Menu Principal  ----------- " << endl;
	cout << endl;
	cout << "1.- Jugar " << endl;
	cout << "2.- Configurar " << endl;
	cout << "3.- Puntuacio " << endl;
	cout << "4.- Sortir " << endl;
	cout << endl;
	cout << "----------------------------------------- " << endl;
}

void MenuNivellDificultat() {
	HANDLE hScreen;
	hScreen = GetStdHandle(STD_OUTPUT_HANDLE);
	TextColor(CYAN, BLACK, hScreen);
	cout << " ----------- DIFICULTAT ------------" << endl;
	TextColor(LIGHTGREEN, BLACK, hScreen);
	cout << "1.- Principiant" << endl;
	TextColor(YELLOW, BLACK, hScreen);
	cout << "2.- Mitja" << endl;
	TextColor(LIGHTRED, BLACK, hScreen);
	cout << "3.- Expert" << endl;
	TextColor(CYAN, BLACK, hScreen);
	cout << "------------------------------------" << endl;
}