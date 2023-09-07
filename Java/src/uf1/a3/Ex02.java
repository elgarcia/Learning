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
public class Ex02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, positius = 0, negatius = 0, zeros = 0;
        int valors[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        
        System.out.print("Introdueix 10 nombres naturals: ");
        for(int i = 0; i < 10; i++){
            valor = entrada.nextInt();
            if(valor > 0){
                positius++;
            }
            if(valor < 0){
                negatius++;
            }
            if(valor == 0){
                zeros++;
            }
            valors[i] = valor;
        }
        for(int j = 0; j < 10; j++){
            System.out.println("Nombre " + j + " = " + valors[j]);
        }
        
        System.out.println("Entre els valors que has introduit hi ha: ");
        System.out.printf("- %2d nombre/s positiu/s.%n", positius);
        System.out.printf("- %2d nombre/s negatius/s.%n", negatius);
        System.out.printf("- %2d nombre/s zero (0).%n", zeros);
    }
    
}
