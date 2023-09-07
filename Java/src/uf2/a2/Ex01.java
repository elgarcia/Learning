package uf2.a2;

import java.util.Scanner;

import javax.sound.sampled.SourceDataLine;

public class Ex01 {
    public static double calculadora(int x, int y, char operacio) {
        double resultat = 0;

        switch (operacio) {
            case '+':
                resultat = x + y;
                break;
            case '-':
                resultat = x - y;
                break;
            case '*':
                resultat = x * y;
                break;
            case '/':
                resultat = x / y;
                break;
            default:
                System.out.println("Operació no valida");
                break;
        }

        return resultat;
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int valor1, valor2;
        double res;
        char operacio;

        System.out.println("Introdueix el primer valor: ");
        valor1 = entrada.nextInt();
        System.out.println("Introdueix el segon valor:");
        valor2 = entrada.nextInt();
        entrada.nextLine();
        System.out.println("Introdueix l'operacio (+, -, *, /)");
        operacio = entrada.nextLine().charAt(0);

        res = calculadora(valor1, valor2, operacio);

        System.out.println("El resultat és: " + res);
    }
}
