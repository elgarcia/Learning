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
public class Ex01 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;
        
        System.out.print("Introdueix un nombre natural: ");
        valor = entrada.nextInt();
        System.out.println("");
        
        System.out.println("La taula de multiplicar del " + valor + " és: ");
        for(int i=1; i<=10; i++){
            System.out.printf("%2d * %2d = %2d%n", valor, i, valor*i);
        }
    }
}
