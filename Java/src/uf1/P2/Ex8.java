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
public class Ex8 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, suma = 0;
        
        do{
        //System.out.print("Introdueix un nombre: ");
        valor = entrada.nextInt();
        } while(valor <= 0);
        
        for(int i = 2; i < valor; i++){
            suma = 0;
            for(int j = 1; j < i; j++){
                if(i % j == 0){
                    suma += j;
                }
            }
            if(suma == i){
                System.out.print(i + " ");
            }
        }
    }
}
