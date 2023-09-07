package uf2.a2;

import java.util.Scanner;

public class Ex03 {
    public static int CILINDRE = 1;
    public static int HEXAEDRE = 2;
    public static int TETRAEDRE = 3;
    public static int ESFERA = 4;

    public static void perimetre_superficie(int tipus){
        Scanner entrada = new Scanner(System.in);
        double a, b, volum, superficie;
        switch(tipus){
            case 1:
                System.out.println("Introdueix radi: ");
                a = entrada.nextDouble();
                System.out.println("Introdueix altura");
                b = entrada.nextDouble();
                volum = Math.PI * Math.pow(a, 2) * b;
                superficie = 2*Math.PI * a * b + 2*Math.PI * Math.pow(a, 2);
                System.out.printf("La superficie és: %.3f", superficie);
                System.out.printf("El volum és: %.3f", volum);
                break;
            case 2:
                System.out.println("Introdueix costat :");
                a = entrada.nextDouble();
                b = a;
                volum = Math.pow(a, 3);
                superficie = 6 * Math.pow(a, 2);
                System.out.println("La superficie és: " + superficie);
                System.out.println("El volum és: " + volum);
                break;
            case 3:
                System.out.println("Intodueix aresta:");
                a = entrada.nextDouble();
                volum = Math.pow(a, 3) * (Math.sqrt(2) / 12);
                superficie = Math.pow(a, 2) * Math.sqrt(3);
                System.out.println("La superficie és: " + superficie);
                System.out.println("El volum és: " + volum);
                break;
            case 4:
                System.out.println("Introdueix radi:");
                a = entrada.nextDouble();
                volum = (4/3) * Math.PI * Math.pow(a, 3);
                superficie = 4 * Math.PI * Math.pow(a, 2);
                System.out.printf("La superficie és: %.3f\n", superficie);
                System.out.printf("El volum és: %.3f\n", volum);
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
        System.out.println("CILINDRE = 1 |  HEXAEDRE = 2  | TETRAEDRE = 3  | ESFERA = 4");
        figura = entrada.nextInt();

        perimetre_superficie(figura);
        
    }
}
