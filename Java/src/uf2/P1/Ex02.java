package uf2.P1;

import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, ind = 0, aux = 0, numPrimers[];

        //System.out.println("Introdueix un valor de N de numeros primers:");
        valor = entrada.nextInt();

        numPrimers = new int [valor];

        do{
            if(esNombrePrimer(aux)){
                numPrimers[ind] = aux;
                ind++;
            }
           aux++;
        }while(ind < valor);

        mostrarVector(numPrimers);

    }

    static boolean esNombrePrimer(int nombre) {
        if (nombre == 0 || nombre == 1 || nombre == 4) {
            return false;
        }
        for (int x = 2; x < nombre / 2; x++) {
            // Si es divisible por cualquiera de estos números, no
            // es primo
            if (nombre % x == 0)
                return false;
        }
        return true;
    }

    static void mostrarVector(int[] primers) {
        int x = (int) primers.length / 10;

        if (x > 0) {
            for (int j = 0; j < x; j++) {
                for (int i = 0; i < 10; i++) {
                    if ((10 * j + i) == (primers.length - 1)) {
                        System.out.printf("%d.", primers[10 * j + i]);
                    } else {
                        if (i == 9) {
                            System.out.printf("%d,\n", primers[10 * j + i]);
                        } else {
                            System.out.printf("%d, ", primers[10 * j + i]);
                        }
                    }

                }
            }

        } else {
            for (int i = 0; i < primers.length; i++) {
                if(i == (primers.length -1)){
                    System.out.printf("%d.", primers[i]);
                }
                else{
                    System.out.printf("%d, ", primers[i]);
                }
            }
        }
    }
}
