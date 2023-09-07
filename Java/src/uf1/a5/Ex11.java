package uf1.a5;

import java.util.Scanner;

public class Ex11 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        int files, columnes;
        int matriu[][];

        System.out.print("Indiqui el nombre de files: ");
        files = entrada.nextInt();

        System.out.print("Indiqui el nombre de columnes: ");
        columnes = entrada.nextInt();

        matriu = new int[files][columnes];

        for (int i = 0; i < files + 2; i++) {
            for (int j = 0; j < columnes; j++) {
                if (i == 0) {
                    if (j == 0) {
                        System.out.print("      " + j);
                    } else {
                        if (j == (columnes - 1)) {
                            System.out.println("  " + j);
                        } else {
                            System.out.print("  " + j);
                        }
                    }
                } else {
                    if (i == 1) {
                        if (j == (columnes - 1)) {
                            System.out.println("----");
                        } else {
                            System.out.print("----");
                        }
                    } else {
                        if (j == 0) {
                            System.out.printf(" %2d |%2d", (i-2), (j * (i - 2)));
                            //System.out.print(" " + (i - 2) + " |  " + (j * (i - 2)));
                        } else {
                            if(j == (columnes - 1)){
                                System.out.printf(" %2d\n", (j * (i - 2)));
                                //System.out.println("  " + (j * (i - 2)));
                            }
                            else{
                                System.out.printf(" %2d", (j * (i - 2)));
                                //System.out.print("  " + (j * (i - 2)));
                            }
                        }
                    }
                }
            }
        }
    }
}
