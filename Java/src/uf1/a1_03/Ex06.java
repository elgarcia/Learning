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
public class Ex06 {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b, c;
        double x1, x2;
        
        System.out.println("Introdueix els coeficients de l'equació de segon grau: ");
        System.out.print("a = ");
        a = entrada.nextInt();
        System.out.print("b = ");
        b = entrada.nextInt();
        System.out.print("c = ");
        c = entrada.nextInt();
        
        x1 = (-b - Math.sqrt(Math.pow(b, 2)-(4*a*c)))/(2*a);
        x2 = (-b + Math.sqrt(Math.pow(b, 2)-(4*a*c)))/(2*a);
        
        System.out.println("La primera solució de l'equació és x1 = " + x1);
        System.out.println("La segona solució de l'equació és x2 = " + x2);
    }
}
