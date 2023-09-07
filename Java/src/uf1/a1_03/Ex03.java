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
public class Ex03 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float alcada, amplada;
        double perimetre, superficie;
        
        System.out.print("Introdueix l'alçada del rectangle: ");
        alcada = entrada.nextFloat();
        System.out.print("Introdueix l'amplada del rectangle: ");
        amplada = entrada.nextFloat();
        
        perimetre = (2.0*alcada) + (2.0*amplada);          
        superficie = (double)(alcada*amplada);
        
        System.out.println("El perimetre del rectangle és: " + perimetre);
        System.out.println("La superficie del rectangle és: " + superficie);
    }
}
