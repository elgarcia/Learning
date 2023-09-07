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
public class Ex10 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float radi, alcada;
        float area, volum;
        
        System.out.print("Introdueixi el radi del cilindre: ");
        radi = entrada.nextFloat();
        System.out.print("Introdueixi l'alçada del cilindre: ");
        alcada = entrada.nextFloat();
        
        area =  2*(float)Math.PI*radi*(radi+alcada);
        volum = (float)Math.PI*(float)Math.pow(radi, 2)*alcada;
        
        System.out.println("La superficie del cilindre és: " + Math.round(area*100)/100.0);
        System.out.println("El volum del cilindre és: " + Math.round(volum*100)/100.0);
    }
    
}
