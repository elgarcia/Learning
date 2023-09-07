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
public class Ex14 {
    public static final int UNO = 1;
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, aux = 1;
        
        System.out.print("Introdueix un numero: ");
        valor = entrada.nextInt();
        
        for(int i = 2; i < valor; i++){
            if(valor % i == 0){
                aux = 0;
            }
        }
        if(aux == 1){
            System.out.println("El nombre " + valor + " és primer");
        }
        else{
            System.out.println("El nombre " + valor + " NO és primer");
        }
    }
}
