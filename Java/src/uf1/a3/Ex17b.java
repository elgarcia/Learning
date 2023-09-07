/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a3;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex17b {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int grau, valor;
        double resultat = 0, coeficient;
        System.out.print("Introdueix grau del polinomi (>=0): ");
        grau = entrada.nextInt();
        System.out.print("Introdueix el valor de la variable (x): ");
        valor = entrada.nextInt();
        for(int i= grau; i >= 0; i--){
            System.out.print("Introduei coeficient de grau " + i + ": ");
            coeficient = entrada.nextInt();
            resultat += (coeficient * Math.pow(valor, i));
        }
        System.out.println("El valor del polinomi és: " + resultat);
    }
}
