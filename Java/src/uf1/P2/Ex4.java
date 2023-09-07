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
public class Ex4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, max = 0, min = 0;
        
//        System.out.print("Introdueix un numero:");
        valor = entrada.nextInt();
        min = valor;
        do{
        if(valor > max){
            max = valor;
        }
        if(valor < min){
            min = valor;
        }
//        System.out.print("Introdueix un numero:");
        valor = entrada.nextInt();
        } while (valor != 0);
        
        System.out.println("Mínim: " + min);
        System.out.println("Màxim: " + max);
    }
}
