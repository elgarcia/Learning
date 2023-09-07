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
public class Ex15 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;
        
        System.out.print("Introdueixi un nombre natural: ");
        valor = entrada.nextInt();
        
        System.out.println("Els divisors de " + valor + " són:");
        for(int i = 1; i <=valor; i++){
            if(valor % i == 0){
                System.out.print(i + " ");
            }
        }
    }
}
