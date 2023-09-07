package uf1.P4;

import java.util.Scanner;

public class Ex06 {
    public static int FILES = 4;

    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);

        int columnes;
        int matriu[][];

        //System.out.println("Introdueix el numero de columnes: ");
        columnes = entrada.nextInt();

        matriu = new int[FILES][columnes];

        for (int i = 0; i < FILES; i++) {
            for (int j = 0; j < columnes; j++) {
                switch (i) {
                    case 0:
                        if (j == 0) {
                            matriu[i][j] = 2;
                        } else {
                            matriu[i][j] = matriu[i][j - 1] + 2;
                        }
                        break;
                    case 1:
                        matriu[i][j] = (int) Math.pow((j+1), 2);
                        break;
                    case 2:
                        matriu[i][j] = matriu[0][j] - matriu[1][j];
                        break;
                    case 3:
                        matriu[i][j] = matriu[0][j] + matriu[1][j] + matriu[2][j];
                        break;
                    default:
                        break;
                }
                if(j == columnes - 1){
                    System.out.printf("%d\t\n", matriu[i][j]);
                }
                else{
                    System.out.printf("%d\t",matriu[i][j]);
                }
            }
        }
    }
}