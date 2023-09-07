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
public class Ex3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int n, parells = 0, senars = 0;
        
//        System.out.print("Introdueix el numero n: ");
        n = entrada.nextInt();
        
        for(int i=1; i <= n; i++){
            if(i % 2 == 0){
                parells += i;    
            }
            else{
                senars += i;
            }
        }
        
        System.out.println("Suma parells: " + parells);
        System.out.println("Suma senars: " + senars);
    }
}
