package uf2.P1;

import java.util.Scanner;

public class Ex01 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b;
        char op;
        String valorA;
        do {
            // System.out.println("Introdueix el valor a:");
            valorA = entrada.nextLine();
            if (valorA.equals("S")) {
                a = 0;
                b = 0;
                op = 'a';
            } else {
                a = Integer.valueOf(valorA);
                // System.out.println("Introdueix el valor b:");
                b = entrada.nextInt();
                entrada.nextLine();
                // System.out.println("Introdueix el signe de operacio:");
                op = entrada.nextLine().charAt(0);
            }
            switch (op) {
                case '+':
                    sumar(a, b);
                    break;
                case '-':
                    restar(a, b);
                    break;
                case 'x':
                    multiplicar(a, b);
                    break;
                case '/':
                    dividir(a, b);
                    break;
                default:
                    break;
            }
        } while (!valorA.equals("S"));

    }

    static void sumar(int a, int b) {
        int resultat;

        resultat = a + b;

        System.out.printf("%d + %d = %d\n", a, b, resultat);
    }

    static void restar(int a, int b) {
        int resultat;

        resultat = a - b;

        System.out.printf("%d - %d = %d\n", a, b, resultat);
    }

    static void multiplicar(int a, int b) {
        int resultat;

        resultat = a * b;

        System.out.printf("%d x %d = %d\n", a, b, resultat);
    }

    static void dividir(int a, int b) {
        double resultat;

        if (b == 0) {
            System.out.println("No es pot dividir per 0.");
        } else {
            resultat = a / b;
            System.out.printf("%d / %d = %.0f\n", a, b, resultat);
        }
    }
}
