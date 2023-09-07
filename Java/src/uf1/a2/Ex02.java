/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex02 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int nombreN;
        
        System.out.print("Introdueixi un nombre natural: ");
        nombreN = entrada.nextInt();
        
        if(nombreN < 0){
            System.out.println("Nombre no natural");
        } 
        else{
            if(nombreN%7 == 0){
            System.out.println("El nombre és multiple de 7");
        } 
            else
            System.out.println("El nombre NO és multiple de 7");
        }
    }
}
