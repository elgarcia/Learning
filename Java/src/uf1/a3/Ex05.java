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
public class Ex05 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int amplada, alcada;
        
        System.out.print("Introdueix l'amplada del rectangle: ");
        amplada = entrada.nextInt();
        System.out.print("Introdueix l'alçada del rectangle: ");
        alcada = entrada.nextInt();
        
        for(int i=0; i < alcada; i++){
            for(int j=0; j < amplada; j++){
                System.out.print("*");
            }
            System.out.println("");
        }
    }
}
