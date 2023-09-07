package uf2.P1;

import java.util.Scanner;

public class Ex04 {
    static Scanner entrada = new Scanner(System.in);

    public static void main(String[] args) {
        String valorA;
        do {
            valorA = entrada.nextLine().toLowerCase();
            switch (valorA) {
                case "c":
                    cilindre();
                    break;
                case "h":
                    hexaedre();
                    break;
                case "t":
                    tetraedre();
                    break;
                case "e":
                    esfera();
                    break;
                default:
                    break;
            }
        } while (!valorA.equals("s"));

    }

    static void cilindre() {
        double radi, altura, volum, superficie;

        radi = entrada.nextDouble();
        altura = entrada.nextDouble();
        volum = Math.PI * Math.pow(radi, 2) * altura;
        superficie = (2 * Math.PI * radi * altura);

        System.out.println("==Cilindre==");
        System.out.printf("Superfície: %.2f\n", superficie);
        System.out.printf("Volum: %.2f\n", volum);

    }

    static void hexaedre() {
        double costat, superficie, volum;

        costat = entrada.nextDouble();
        volum = Math.pow(costat, 3);
        superficie = Math.pow(costat, 2) * 6;

        System.out.println("==Hexaedre==");
        System.out.printf("Superfície: %.2f\n", superficie);
        System.out.printf("Volum: %.2f\n", volum);
    }

    static void tetraedre() {
        double superficie, aresta, volum;

        aresta = entrada.nextDouble();

        superficie = Math.pow(aresta, 2) * Math.sqrt(3);
        volum = Math.pow(aresta, 3) * (Math.sqrt(2) / 12);

        System.out.println("==Tetraedre==");
        System.out.printf("Superfície: %.2f\n", superficie);
        System.out.printf("Volum: %.2f\n", volum);
    }

    static void esfera() {
        double superficie, volum, radi;

        radi = entrada.nextDouble();
        volum = (4.0 / 3) * Math.PI * Math.pow(radi, 3);
        superficie = 4 * Math.PI * Math.pow(radi, 2);

        System.out.println("==Esfera==");
        System.out.printf("Superfície: %.2f\n", superficie);
        System.out.printf("Volum: %.2f\n", volum);
    }
}
