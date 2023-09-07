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
public class Ex04 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;
        String frase;
        
        System.out.print("Escriu una frase: ");
        frase = entrada.nextLine();
        System.out.print("Quants cops vols repetir-la? ");
        valor = entrada.nextInt();
        
        for(int i= 1; i <= valor; i ++){
            System.out.println(i + " - " + frase);
        }
        
    }
}
