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
public class Ex9 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor1, valor2, aux, mcm = 0;
        
        //System.out.print("Introdueix numero 1: ");
        valor1 = entrada.nextInt();
        //System.out.print("Introdueix numero 2: ");
        valor2 = entrada.nextInt();
        
        mcm = valor1 * valor2;
        
        while (valor2 != 0) {
         aux = valor2;
         valor2 = valor1 % valor2;
         valor1 = aux;
        }
       
        mcm = mcm / valor1;
        
        System.out.println("mcm = " + mcm);
    }
}
