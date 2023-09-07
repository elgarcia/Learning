package uf2.a3;

import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;

        System.out.print("Quantes taules de multiplicar vols mostrar? ");
        valor = entrada.nextInt();

        mostrarBlocPantalla(1, valor);
    }

    // Mostra una línia d’una taula de multiplicar
    static String muntarLiniaTaulaMultiplicar(int taula, int n) {
        String linia;

        linia = String.format("%d x %2d = %2d", taula, n, taula * n);

        return linia;
    }

    // Mostra una línia d’una sèrie de taules de multiplicar, començant per
    // taulaInicial i acabant per taulaFinal.
    static String muntarLiniaPantalla(int taulaInicial, int taulaFinal, int n) {
        String linia = "";

        for (int i = taulaInicial; i < taulaFinal; i++) {
            if (i == taulaInicial) {
                linia = String.format("%s\t", muntarLiniaTaulaMultiplicar(i, n));
            } else {
                if (i == (taulaFinal - 1)) {
                    linia = linia + String.format("%s\n", muntarLiniaTaulaMultiplicar(i, n));
                } else {
                    linia = linia + String.format("%s\t", muntarLiniaTaulaMultiplicar(i, n));
                }
            }
        }
        return linia;
    }

    // Mostra un bloc de taules per pantalla des de taulaInicial fins taulaFinal.
    static void mostrarBlocPantalla(int taulaInicial, int taulaFinal){
        for(int i = 1; i <= 10; i++){
            System.out.printf("%s", muntarLiniaPantalla(taulaInicial, taulaFinal, i));
        }
    }
}
