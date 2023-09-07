package uf1.P4;

import java.util.Scanner;

public class Ex09 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        int fil = 0, filini = 0, col = 0, colini = 0, valor;
        Character matriu[][];
        String moviments, patro[];

        System.out.println("Introdueix fila y columna: ");
        fil = entrada.nextInt();
        col = entrada.nextInt();

        matriu = new Character[fil + (fil - 1)][col + (col - 1)];

        System.out.println("Introdueix on comença: ");
        filini = entrada.nextInt();
        colini = entrada.nextInt();

        System.out.println("Introdui moviments:");
        valor = entrada.nextInt();

        moviments = String.valueOf(valor);

        patro = moviments.split("5");
        matriu[filini][colini] = 'O';

        for (int i = 0; i < patro.length; i++) {
            switch (patro[i]) {
                case "1":

                    break;
                case "2":
                    break;
                case "3":
                    break;
                case "4":
                    break;
                case "5":
                    break;
                case "6":
                    break;
                case "7":
                    break;
                case "8":
                    break;
                case "9":
                    break;
                default:
                    break;
            }
        }

        /* Mostrar desbloqueig */
        for (int i = 0; i < fil; i++) {
            for (int j = 0; j < col; j++) {
                if (i == 0) {
                    if (j == 0) {
                        System.out.print("+-");
                    } else {
                        if (j == (col - 1)) {
                            System.out.println("-+");
                        } else {
                            System.out.print("--");
                        }

                    }
                } else {
                    if (i == (fil - 1)) {
                        if (j == 0) {
                            System.out.print("+-");
                        } else {
                            if (j == (col - 1)) {
                                System.out.println("-+");
                            } else {
                                System.out.print("--");
                            }

                        }
                    } else {
                        if (j == 0) {
                            System.out.print("|");
                        } else {
                            if (j == (col - 1)) {
                                System.out.println("|");
                            } else {
                                
                            }

                        }

                    }
                }
            }
        }

    }
}
