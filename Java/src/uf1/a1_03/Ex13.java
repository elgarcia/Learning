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
public class Ex13 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float celsius, fahrenheit;
        
        System.out.print("Introdueix temperatura en graus Celsius: ");
        celsius = entrada.nextFloat();
        System.out.println("");
        
        fahrenheit = celsius * 1.8f + 32;
        
        System.out.println("La temperatura en graus Fahrenheit és: " + fahrenheit);
        
    }
}
