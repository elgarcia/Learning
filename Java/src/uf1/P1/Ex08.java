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
public class Ex08 {
    public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        float num1, num2, result;
        
        //System.out.print("Introdueix un numero: ");
        num1 = entrada.nextFloat();
        //System.out.print("Introdueix un altre numero: ");
        num2 = entrada.nextFloat();
        
        if(num2 == 0){
            System.out.print("Infinit");
        }
        else{
            result = num1 / num2;
            System.out.printf("%.1f", result);
        }
        
    }
}
