/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a3;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex16b {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor1, valor2, residu = 1;

        System.out.print("Introdueix un nombre natural: ");
        valor1 = entrada.nextInt();
        System.out.print("Introdueix un altre natural: ");
        valor2 = entrada.nextInt();

        System.out.println("El màxim comú divisor de " + valor1 + " i " + valor2 + " és:");
        
        while ((residu != 0) && (valor2 != 0)) {
            residu = valor1 % valor2;
            System.out.printf("%2d %% %2d = %2d\n", valor1, valor2, residu);
            
            valor1 = valor2;
            valor2 = residu;
        }
        System.out.println("MCD = " + valor1);
    }
}
