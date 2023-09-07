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
public class Ex02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        String nom, cognom1, cognom2;
        
        System.out.print("Introdueixi el seu nom: ");
        nom = entrada.nextLine();
        System.out.print("Introdueixi el seu primer cognom: ");
        cognom1 = entrada.nextLine();
        System.out.print("Introdueixi el seu segon cognom: ");
        cognom2 = entrada.nextLine();
        System.out.println("El seu nom complet és: " + nom + " " + cognom1 + " " + cognom2);
    }
}
