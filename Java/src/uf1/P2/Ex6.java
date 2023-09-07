/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex6 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, valoranterior1 = 0, valoranterior2 = 0, valoractual = 0;

        do {
            //System.out.print("Introdueix un numero: ");
            valor = entrada.nextInt();
        } while (valor <= 1);

        for (int i = 1; i <= valor; i++) {
            if (i == 1) {
                System.out.print(i);
                valoranterior1 = i;
            } else {
                if (i == 2) {
                    valoranterior2 = valoranterior2 + valoranterior1;
                    valoranterior1 = valoranterior2;
                    System.out.print(" " + valoranterior2);
                } else {
                    valoractual = valoranterior1 + valoranterior2;
                    valoranterior2 = valoranterior1;
                    valoranterior1 = valoractual;
                    System.out.print(" " + valoractual);

                }
            }
        }
    }
}
