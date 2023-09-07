package uf1.P4;

import java.util.Scanner;

public class Ex08 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        int valor, traça = 0, matriu[][] = new int[4][4];

        for(int i= 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                //System.out.println("Introdueix un valor");
                valor = entrada.nextInt();

                matriu[i][j] = valor;
            }
        }

        /* Mostra matriu */
        for(int i = 0; i < 4; i++){
            for(int j = 0; j < 4; j++){
                if(j == 3){
                    System.out.printf("%d\n", matriu[i][j]);
                }
                else{
                    System.out.printf("%d\t", matriu[i][j]);
                }
            }
        }

        System.out.println();

        /* Mostra traça */
        for(int i= 0; i<4; i++){
            traça += matriu[i][i];
        }
        System.out.println("Traça: " + traça);

        System.out.println();

        /* Matriu transposada */
        System.out.println("Matriu transposada:");
        for(int i = 0; i <4; i++){
            for(int j= 0; j < 4; j++){
                if(j == 3){
                    System.out.printf("%d\n", matriu[j][i]);
                }
                else{
                    System.out.printf("%d\t", matriu[j][i]);
                }
            }
        }
    }
}
