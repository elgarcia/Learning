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
public class Ex05 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b;
        int suma, resta, residu, quo, mul;
        double quoreal;
        
        System.out.print("Introdueix el valor  enter A: ");
        a = entrada.nextInt();
        System.out.println("");
        System.out.print("Introdueix el valor enter B: ");
        b = entrada.nextInt();
        
        suma = a+b;
        resta = a-b;
        residu = a%b;
        quo = a/b;
        mul = a*b;
        quoreal = (double)a/b;
        
        System.out.println("Suma: .............................. " + " A + B =     " 
                + suma);
        System.out.println("Resta: ............................. " + " A - B =     " 
                + resta);
        System.out.println("Multiplicació: ..................... " + " A * B =     " 
                + mul);
        System.out.println("Quocient de la divisió entera: ... " + " A div B =     " 
                + quo);
        System.out.println("Residu de la divisió entera: ..... " + " A mod B =     " 
                + residu);
        System.out.println("Divisió real: ...................... " + " A / B =     " 
                + quoreal);
    }
}
