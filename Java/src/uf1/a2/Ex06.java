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
public class Ex06 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b, c, major;
        
        System.out.print("Digueu un nombre: ");
        a = entrada.nextInt();
        System.out.print("Digueu un altre: ");
        b = entrada.nextInt();
        System.out.print("Digueu un altre: ");
        c = entrada.nextInt();
        
        major = a;
        if(major < b){
            major = b;
            if(major < c){
                major = c;
            }
        }
        else{
            if(major < c){
                major = c;
            }
        }
        
        System.out.println("El major és: " + major);
    }
}
