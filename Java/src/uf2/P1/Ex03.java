package uf2.P1;

import java.util.Scanner;

public class Ex03 {
    static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {
        String valorA;
        do {
            // System.out.println("Introdueix el valor a:");
            valorA = entrada.nextLine();
            valorA = valorA.toLowerCase();
            switch (valorA) {
                case "q":
                    quadrat();
                    break;
                case "r":
                    rectanlge();
                    break;
                case "t":
                    triangle();
                    break;
                case "c":
                    cercle();
                    break;
                default:
                    break;
            }
        } while (!valorA.equals("s"));

    }

    static void quadrat() {
        double costat, perimetre, superficie;

        costat = entrada.nextDouble();
        perimetre = costat * 4;
        superficie = costat * costat;

        System.out.println("==Quadrat==");
        System.out.printf("Perímetre : %.2f\n", perimetre);
        System.out.printf("Superfície: %.2f\n", superficie);
    }

    static void rectanlge() {
        int costat1, costat2;
        double superficie, perimetre;

        costat1 = entrada.nextInt();
        costat2 = entrada.nextInt();
        perimetre = (costat1 * 2) + (costat2 * 2);
        superficie = costat1 * costat2;

        System.out.println("==Rectangle==");
        System.out.printf("Perímetre : %.2f\n", perimetre);
        System.out.printf("Superfície: %.2f\n", superficie);
    }

    static void triangle() {
        double superficie, base, perimetre, altura, hipotenusa;

        hipotenusa = entrada.nextDouble();
        base = entrada.nextDouble();

        altura =  Math.sqrt(Math.pow(hipotenusa, 2) - Math.pow((base / 2), 2));

        superficie = (base * altura) / 2;
        perimetre = base + (hipotenusa * 2);

        System.out.println("==Triangle isòsceles==");
        System.out.printf("Perímetre : %.2f\n", perimetre);
        System.out.printf("Superfície: %.2f\n", superficie);
    }

    static void cercle() {
        double superficie, perimetre, radi;

        radi = entrada.nextDouble();
        perimetre = Math.PI * (radi * 2);
        superficie = Math.PI * Math.pow(radi, 2);

        System.out.println("==Cercle==");
        System.out.printf("Perímetre : %.2f\n", perimetre);
        System.out.printf("Superfície: %.2f\n", superficie);
    }
}
