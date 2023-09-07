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
public class Ex12 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float aresta, area, volum;
        
        System.out.print("Introdueixi l'aresta del tetraedre: ");
        aresta = entrada.nextFloat();
        System.out.println("");
        
        area = (float)Math.sqrt(3) * (float)Math.pow(aresta, 2);
        volum = (float)Math.pow(aresta, 3) / (6*(float)Math.sqrt(2));
        
        System.out.println("La superficie del tetraedre és: " + Math.round(area*100)/100.0);
        System.out.println("El volum del tetraedre és: " + Math.round(volum*100)/100.0);
    }
}
