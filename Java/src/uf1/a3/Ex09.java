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
public class Ex09 {
    public static final int MAX = 10;
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, aux = 1;
        
        System.out.println("He pensat un nombre entre 1 i 10. Prova d'endevinar-ho!");
        int nombre = (int)(Math.random()*MAX + 1);
        System.out.print("Resposta: ");
        valor = entrada.nextInt();
        while(valor != nombre){
            if(nombre > valor){
                 System.out.println("Incorrecte el nombre és major. Prova de nou");
            }
            if(nombre < valor){
                 System.out.println("Incorrecte el nombre és menor. Prova de nou");
            }
            System.out.print("Resposta: ");
            valor = entrada.nextInt();
            aux++;
        }
        
        System.out.println("Correcte!!!");
        System.out.println("Has necesitat " + aux + " intents per endevinar el nombre.");
        
    }
}
