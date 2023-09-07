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
public class Ex14 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float fahrenheit, celsius;
        
        System.out.print("Introdueixi temperatura en  graus Fahrenheit: ");
        fahrenheit = entrada.nextFloat();
        System.out.println("");
        
        celsius = (fahrenheit-32) / 1.8f;
        
        System.out.println("La temperatura en graus Fahrenheit és: " + Math.round(celsius*100)/100.0);
    }
}
