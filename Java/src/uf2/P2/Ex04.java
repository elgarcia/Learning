package uf2.P2;

import java.util.Scanner;

public class Ex04 {
    static Scanner entrada = new Scanner(System.in);

    public static void main(String[] args) {
        int valor;
        String paisos[], paisCerca;

        // System.out.println("Introdueix el numero de paisos:");
        valor = entrada.nextInt();
        entrada.nextLine();

        paisos = new String[valor];

        for (int i = 0; i < valor; i++) {
            // System.out.println("Introdueix un pais:");
            paisos[i] = entrada.nextLine();
        }

        paisCerca = entrada.nextLine();

        cercaBinaria(paisos, paisCerca);
    }

    static void cercaBinaria(String[] array, String valor) {
        int aux = 0, postrobat = 0, longitud = array.length;
        boolean trbat = false;

        for (int i = 0; i <= longitud; ) {
            if (array[(i + longitud) / 2].equals(valor)) {
                postrobat = i;
                trbat = true;
                i = longitud + 1;
            } else {
                if (array[(i + longitud) / 2].charAt(0) < valor.charAt(0)) {
                    i = (i + longitud) / 2 + 1;
                    aux++;
                } else {
                    if (array[(i + longitud) / 2].charAt(0) > valor.charAt(0)) {
                        longitud = (i + longitud) / 2 - 1;
                        aux++;
                    }
                    else{
                        i = longitud + 1;
                        aux++;
                    }
                }
            }
            
        }

        System.out.println("Total passades: " + aux);
        if (!trbat) {
            System.out.println("No trobat");
        } else {
            System.out.println("Trobat a la posició: " + postrobat);
        }
    }
}
