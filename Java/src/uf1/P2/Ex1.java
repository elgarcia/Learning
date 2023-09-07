/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex1 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b, c;
        
        do{
        //System.out.print("Introdueix un nombre a: ");
        a = entrada.nextInt();
        } while(a <= 0);
        do{
        //System.out.print("Introdueix un nombre b: ");
        b = entrada.nextInt();
        } while((b < a) || (b <= 0));
        
        do{
        //System.out.print("Introdueix un nombre c: ");
        c = entrada.nextInt();
        } while(c <= 0);
        
        System.out.print(a);
        for(int i = a+c; i <= b; i +=c){
            System.out.print(" " + i);
        }
        
        
        
    }
}
