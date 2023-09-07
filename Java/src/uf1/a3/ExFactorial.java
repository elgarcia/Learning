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
public class ExFactorial {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, fact;
        
        System.out.print("Introdueix valor: ");
        valor = entrada.nextInt();
        fact = valor;
        
        for(int i = valor-1; i > 0; i--){
            fact *= i;
            
        }
        System.out.println(valor + "! = " + fact);
    }
}
