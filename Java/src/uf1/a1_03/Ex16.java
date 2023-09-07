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
public class Ex16 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float kilometres, milles;
        
        
        System.out.print("Introdueixi distància en kilometres: ");
        kilometres = entrada.nextFloat();
        System.out.println("");
        
        milles = kilometres * 0.621f;
        
        System.out.println("La distància en milles és: " + Math.round(milles*100)/100.0);
    }
    
}
