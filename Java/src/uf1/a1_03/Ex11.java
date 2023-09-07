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
public class Ex11 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float aresta, area, volum;
        
        System.out.print("Introdueixi l'aresta de l'hexaedre: ");
        aresta = entrada.nextFloat();
        System.out.println("");
        
        area = 6*(float)Math.pow(aresta, 2);
        volum = (float) Math.pow(aresta, 3);
        
        System.out.println("La superficie de l'hexaedre és: " + area);
        System.out.println("El volum de l'hexaedre és: " + Math.round(volum*100)/100.0);
    }
}
