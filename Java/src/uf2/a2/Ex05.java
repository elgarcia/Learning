package uf2.a2;

import java.util.Scanner;

public class Ex05 {
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int valor, matriu[][] = new int[0][0], files, columnes, max, min;

        System.out.println("Introdueix files:");
        files = entrada.nextInt();
        System.out.println("Introdueix columnes");
        columnes = entrada.nextInt();

        System.out.println("Generem matriu:");
        matriu = demanaMatriu(files, columnes);
        System.out.println("Done");
        System.out.println("Mostrem matriu:");
        mostraMatriu(matriu);
        System.out.println("Pulsa qualsevol tecla per continuar...");
        entrada.nextLine();
        entrada.nextLine();

        System.out.println("Generem matriu aleatoria");
        System.out.println("Introdueix maxim:");
        max = entrada.nextInt();
        System.out.println("Introdueix minim:");
        min = entrada.nextInt();
        matriu = generaMatriu(files, columnes, min, max);
        System.out.println("Mostrem nova matriu aleatoria:");
        mostraMatriu(matriu);
        System.out.println("Pulsa qualsevol tecla per continuar...");
        entrada.nextLine();
        entrada.nextLine();

    }

    public static void mostraMatriu(int[][] matriu){
        for(int i = 0; i < matriu.length; i++){
            for(int j = 0; j < matriu[i].length; j++){
                if(j == (matriu[i].length - 1)){
                    System.out.printf("%2d\n", matriu[i][j]);
                }
                else{
                System.out.printf("%2d\t", matriu[i][j]);
                }
            }
        }
    }

    public static int[][] demanaMatriu(int files, int columnes){
        Scanner entrada = new Scanner(System.in);
        int valor, matriu[][];

        matriu = new int[files][columnes];

        for(int i = 0; i < files; i++){
            for(int j = 0; j < columnes; j++){
                System.out.println("Introdueix el valor de la matriu[" + i + "][" + j + "]");
                valor = entrada.nextInt();
                matriu[i][j] = valor;        
            }
        }

        return matriu;
    }

    public static int[][] generaMatriu(int files, int columnes, int min, int max){
        int valor, matriu[][];

        matriu = new int[files][columnes];

        for(int i = 0; i < files; i++){
            for(int j = 0; j < columnes; j++){
                valor = (int)(Math.random()*(max - min + 1) + min);
                matriu[i][j] = valor;        
            }
        }

        return matriu;
    }
}
