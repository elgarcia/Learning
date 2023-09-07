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
public class Ex03 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, suma = 0;
        
        System.out.print("Introdueix un nombre natural: ");
        valor = entrada.nextInt();
        System.out.println("");
        
        for(int i = 1; i <= valor; i++){
            suma += i;
        }
        
        System.out.println("La suma  dels " + valor + " primers nombres naturals"
                + " és: " + suma);
    }
}
