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
public class Ex06 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;
        
        
        System.out.print("Introdueix un nombre (>=100 per acabar): ");
        valor = entrada.nextInt();
        while(valor < 100){
            System.out.print("Introdueix un nombre (>=100 per acabar): ");
        valor = entrada.nextInt();
        }
        System.out.println("Acabat! El darrer nombre introduit és: " + valor);
    }
}
