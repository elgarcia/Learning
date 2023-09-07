/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a4;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex01 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        String frase;
        int valor = 0;
        boolean valid = false;

        System.out.println("Introdueix una frase de 3 o més caracters: ");
        frase = entrada.nextLine();

        while (frase.length() < 3) {
            System.out.println("Error: la frase no té la longitud mínima");
            System.out.println("Introdueix una frase de 3 o més caracters: ");
            frase = entrada.nextLine();
        }

        System.out.println("Indica una posicio entre 1 i " + (frase.length() - 2));

        while (!valid) {

            if (entrada.hasNextInt()) {
                valor = entrada.nextInt();
                valid = true;
            } else {
                System.out.println("ERROR: tipus de dada incorrecte");
                valid = false;
                entrada.nextLine();
            }

        }

        while ((valor < 1) || (valor > (frase.length() - 2))) {
            System.out.println("ERROR: valor fora del rang permés");
            entrada.nextLine();
            if (entrada.hasNextInt()) {
                valor = entrada.nextInt();
            }

        }

        System.out.println("Caràcter a la posicio " + valor + ": " + frase.charAt(valor));
        System.out.println("Caràcter a la posicio anterior: " + frase.charAt(valor - 1));
        System.out.println("Caràcter a la posicio posterior: " + frase.charAt(valor + 1));

    }
}
