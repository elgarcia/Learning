/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_02;

/**
 *
 * @author Elias
 */
public class Exercici8 {
    
    public static void main(String[] args){
        int a = 10, b = 27;
        int r1 = a+b, r2 = a-b, r3= a+b*3, r4 = b/2, r5 = b%10;
        double x = 1.1;
        double rx1 = x*x, rx2 = (float)b/2;
        String c = "para", d = "caigudes";
        String comp = c+d;
        
        System.out.println("a és " + a + ", b és " + b);
        System.out.println("a+b és " + r1);
        System.out.println("a-b és " + r2);
        System.out.println("a+b*3 és " + r3);
        System.out.println("b/2 és " + r4);
        System.out.println("b%10 és " + r5);
        System.out.println("");
        System.out.println("x és " + x);
        System.out.println("x*x és " + rx1);
        System.out.println("b/2 és " + rx2);
        System.out.println("");
        System.out.println(c + " és una paraula");
        System.out.println(d + " és una altra paraula");
        System.out.println("Si les juntem tenim la paraula composta " + comp);         
    }
    
}
