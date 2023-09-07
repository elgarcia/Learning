/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P1;

import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author Elias
 */
public class Ex04 {
     public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        
        int num1, num2, num3;
        int major, mitja, menor, aux;
        
        //System.out.print("Introdueix un numero: ");
        num1 = entrada.nextInt();
        //System.out.print("Introdueix un altre numero: ");
        num2 = entrada.nextInt();
        //System.out.print("Introdueix un altre numero: ");
        num3 = entrada.nextInt();
        
        major = num1;
        mitja = num2;
        menor = num3;
        if(major < mitja){
            major = num2;
            mitja = num1;
        }
        if(mitja < menor){
            aux = mitja;
            mitja = menor;
            menor = aux;
        }
        if(major < mitja){
            aux = major;
            major = mitja;
            mitja = aux;
        }
        
        System.out.print(major + " >= " + mitja + " >= " + menor);
    }
}
