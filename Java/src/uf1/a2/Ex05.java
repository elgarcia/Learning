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
public class Ex05 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b, primer, segon;
        
        System.out.print("Introdueix un nombre enter: ");
        a = entrada.nextInt();
        System.out.print("Introdueix un altre enter: ");
        b = entrada.nextInt();
        
        primer = a;
        if(primer < b){
            primer = b;
            segon = a;
        }
        else{
            segon = b;
        }
        
        System.out.println("Els teus nombres en ordre creixent són: " + primer + ", " + segon);
    }
    
}
