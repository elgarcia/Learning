/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Acepta_el_reto;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Num116 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor;
        
        do{
        valor = entrada.nextInt();
        } while ((valor < 0) || (valor > 10));
        
        for(int i = 0; i < valor; i++){
            System.out.println("Hola mundo.");
        }
        
    }
}
