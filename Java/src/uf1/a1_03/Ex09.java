/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_03;

/**
 *
 * @author Elias
 */
public class Ex09 {
    public static void main(String[] args) {
        int a, b, c;
        a = 3;
        b = 6;
        c = 4;
        
        int aux1, aux2;
        
        aux1 = a + 7 * c;
        aux2 = b + 2 - a;
        
        float aux3 = (float)aux1/aux2;
        
        System.out.println("L'expresio (A+7*C)/(B+2-A)+2*B");
        System.out.println("");
        System.out.println("Pels valors A = 3, B = 6, C = 4");
        System.out.println("És = " + (aux3+(2*b)));
    }
    
}
