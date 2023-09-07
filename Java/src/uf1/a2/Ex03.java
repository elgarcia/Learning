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
public class Ex03 {
    public static void main(String[] args) {
        int n, m;
        Scanner entrada = new Scanner(System.in);
        
        System.out.print("Introdueixi un nombre natural: ");
        n = entrada.nextInt();
        
        System.out.print("Introdueixi un altre nombre natural: ");
        m = entrada.nextInt();
       
        if((n < 0) || (m < 0)){
            System.out.println("Nombres NO naturals");
        } 
        else{
            if((n%m == 0) || (m%n == 0)){
            System.out.println("Un d'ells és múltiple de l'altre");
        } 
            else
            System.out.println("Cap d'ells és multiple de l'altre");
        }
    }
}
