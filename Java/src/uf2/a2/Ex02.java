package uf2.a2;

import java.util.Scanner;

public class Ex02 {
    public static int QUADRAT = 1;
    public static int RECTANGLE = 2;
    public static int TRIANGLE = 3;
    public static int CERCLE = 4;

    public static void perimetre_superficie(int tipus){
        Scanner entrada = new Scanner(System.in);
        double a, b, perimetre, superficie;
        switch(tipus){
            case 1:
                System.out.println("Introdueix costat: ");
                a = entrada.nextDouble();
                b = a;
                perimetre = a*4;
                superficie = Math.pow(a, 2);
                System.out.println("El perimetre és: " + perimetre);
                System.out.println("La superficie és: " + superficie);
                break;
            case 2:
                System.out.println("Introdueix costat 'a': ");
                a = entrada.nextDouble();
                System.out.println("Introdueix costat 'b':");
                b = entrada.nextDouble();
                perimetre = (a*2) + (b*2);
                superficie = a * b;
                System.out.println("El perimetre és: " + perimetre);
                System.out.println("La superficie és: " + superficie);
                break;
            case 3:
                System.out.println("Intodueix base:");
                a = entrada.nextDouble();
                System.out.println("Introdueix altura:");
                b = entrada.nextDouble();
                double costat = Math.sqrt((Math.pow(a, 2)) + Math.pow(b, 2));
                perimetre = costat*2 + a;
                superficie = (a * b)/ 2;
                System.out.println("El perimetre és: " + perimetre);
                System.out.println("La superficie és: " + superficie);
                break;
            case 4:
                System.out.println("Introdueix radi:");
                a = entrada.nextDouble();
                perimetre = (Math.PI * (a*2));
                superficie = Math.PI * Math.pow(a,2);
                System.out.printf("El perimetre és: %.3f\n", perimetre);
                System.out.printf("La superficie és: %.3f\n", superficie);
                break;
            default:
                System.out.println("Figura no valida");
                break;
        }
    }

    

    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int figura;

        System.out.println("Tria una figura: ");
        System.out.println("Quadrat = 1 |  Rectangle = 2  | Triangle = 3  | Cercle = 4");
        figura = entrada.nextInt();

        perimetre_superficie(figura);
        
    }
}
