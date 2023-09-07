/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex08 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int nota;
        String notaFinal = "";
        boolean aux = true;
        
        System.out.print("Introdueix una nota (enter entre  0 i 10): ");
        nota = entrada.nextInt();
        
        switch(nota){
            case 0:
            case 1:
            case 2:
                notaFinal = "Molt deficient";
                break;
            case 3:
            case 4:
                notaFinal = "Insuficient";
                break;
            case 5:
                notaFinal = "Suficient";
                break;
            case 6:
                notaFinal = "Bé";
                break;
            case 7:
            case 8:
                notaFinal = "Notable";
                break;
            case 9:
            case 10:
                notaFinal = "Excel·lent";
                break;
            default: 
                System.out.println("Numero no valid");
                aux = false;
                break;
        }
        
        if(aux){
            System.out.println("El literal de la nota és " + notaFinal);   
        }
    }
}
