package uf2.a2;

import java.util.Scanner;

public class Ex06 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int files, columnes, matriuGame[][];

        System.out.println("Introdueix files:");
        files = entrada.nextInt();
        System.out.println("Introdueix columnes:");
        columnes = entrada.nextInt();

        matriuGame = demanaMatriu(files, columnes);

        matriuGame = comptaMines(matriuGame);

        mostraMatriu(matriuGame);

    }

    public static void mostraMatriu(int[][] matriu) {
        for (int i = 0; i < matriu.length; i++) {
            for (int j = 0; j < matriu[i].length; j++) {
                if (j == (matriu[i].length - 1)) {
                    System.out.printf("%2d\n", matriu[i][j]);
                } else {
                    System.out.printf("%2d\t", matriu[i][j]);
                }
            }
        }
    }

    public static int[][] demanaMatriu(int files, int columnes) {
        Scanner entrada = new Scanner(System.in);
        int valor, matriu[][];

        matriu = new int[files][columnes];

        for (int i = 0; i < files; i++) {
            for (int j = 0; j < columnes; j++) {
                System.out.println("Introdueix el valor de la matriu[" + i + "][" + j + "]");
                System.out.println("Valor 0: No hi ha mina | Valor -1: Hi ha mina");
                valor = entrada.nextInt();
                matriu[i][j] = valor;
            }
        }

        return matriu;
    }

    public static int[][] comptaMines(int[][] campo) {
        int aux, matriu[][] = campo;

        for (int i = 0; i < matriu.length; i++) {
            for (int j = 0; j < matriu[i].length; j++) {
                aux = 0;
                // Comprobem que hi ha mina
                if (matriu[i][j] != -1) {

                    // Primera fila
                    if (i == 0) {
                        // Primera columna
                        if (j == 0) {
                            if (matriu[i + 1][j] == -1) {
                                aux++;
                            }
                            if (matriu[i][j + 1] == -1) {
                                aux++;
                            }
                            if (matriu[i + 1][j + 1] == -1) {
                                aux++;
                            }
                        } else {
                            // Ultima columna
                            if (j == (matriu[i].length - 1)) {
                                if (matriu[i][j - 1] == -1) {
                                    aux++;
                                }
                                if (matriu[i + 1][j] == -1) {
                                    aux++;
                                }
                                if (matriu[i + 1][j - 1] == -1) {
                                    aux++;
                                }
                            } else {
                                // Resta de casos primera fila
                                if (matriu[i][j - 1] == -1) {
                                    aux++;
                                }
                                if (matriu[i][j + 1] == -1) {
                                    aux++;
                                }
                                if (matriu[i + 1][j] == -1) {
                                    aux++;
                                }
                                if (matriu[i + 1][j - 1] == -1) {
                                    aux++;
                                }
                                if (matriu[i + 1][j + 1] == -1) {
                                    aux++;
                                }
                            }
                        }
                    } else {
                        // Ultima fila
                        if (i == (matriu.length - 1)) {
                            // Primera columna
                            if (j == 0) {
                                if (matriu[i - 1][j] == -1) {
                                    aux++;
                                }
                                if (matriu[i][j + 1] == -1) {
                                    aux++;
                                }
                                if (matriu[i - 1][j + 1] == -1) {
                                    aux++;
                                }
                            } else {
                                // Ultima columna
                                if (j == (matriu[i].length - 1)) {
                                    if (matriu[i][j - 1] == -1) {
                                        aux++;
                                    }
                                    if (matriu[i - 1][j] == -1) {
                                        aux++;
                                    }
                                    if (matriu[i - 1][j - 1] == -1) {
                                        aux++;
                                    }
                                } else {
                                    // Resta de casos ultima fila
                                    if (matriu[i][j - 1] == -1) {
                                        aux++;
                                    }
                                    if (matriu[i][j + 1] == -1) {
                                        aux++;
                                    }
                                    
                                    if (matriu[i - 1][j - 1] == -1) {
                                        aux++;
                                    }
                                    if (matriu[i - 1][j + 1] == -1) {
                                        aux++;
                                    }
                                    if(matriu[i - 1][j] == -1){
                                        aux++;
                                    }
                                }
                            }

                        } else {
                            // Resta de casos
                            if (matriu[i + 1][j] == -1) {
                                aux++;
                            }
                            if (matriu[i][j - 1] == -1) {
                                aux++;
                            }
                            if (matriu[i][j + 1] == -1) {
                                aux++;
                            }
                            if (matriu[i - 1][j] == -1) {
                                aux++;
                            }
                            if (matriu[i - 1][j - 1] == -1) {
                                aux++;
                            }
                            if (matriu[i - 1][j + 1] == -1) {
                                aux++;
                            }
                            if (matriu[i + 1][j - 1] == -1) {
                                aux++;
                            }
                            if (matriu[i + 1][j + 1] == -1) {
                                aux++;
                            }
                        }
                    }
                    // Afegim mines adjacents a la matriu
                    matriu[i][j] = aux;
                }
            }
        }
        return matriu;
    }
}
