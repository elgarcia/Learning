/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_03;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex07 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float alcada, amplada;
        float perimetre, superficie;
        
        System.out.print("Introdueixi l'alçada del triangle isòsceles: ");
        alcada = entrada.nextFloat();
        System.out.print("Introdueixi l'amplada del trianlge isòsceles: ");
        amplada = entrada.nextFloat();
        
        perimetre = (float) (amplada + (Math.sqrt(Math.pow(alcada, 2) + 
                Math.pow(amplada/2,2)))*2);
        superficie = (alcada * amplada)/2;
        
        System.out.println("El perimetre del triangle és: " + perimetre);
        System.out.println("La superficie del triangle és: " + superficie);
    }
   
}
