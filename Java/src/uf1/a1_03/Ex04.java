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
public class Ex04 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int radi;
        double longitud, area, volum;
        double pi = Math.PI;
        
        System.out.print("Introdueixi el radi de la circumferencia: ");
        radi = entrada.nextInt();
        
        longitud = 2*pi*(double)radi;
        area = pi * (double)Math.pow(radi, 2);
        volum = (4*pi*(double)Math.pow(radi, 3))/3;
        
        System.out.println("La seva longitud és: " + Math.round(longitud*1000)/1000);
        System.out.println("L'area del cercle és: " + Math.round(area*Math.pow(10, 3))
                /Math.pow(10, 3));
        System.out.println("El volum de l'esfera és: " + Math.round(volum*Math
                .pow(10, 3))/Math.pow(10, 3));
        
    }
}
