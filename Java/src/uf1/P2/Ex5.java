/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Locale;
import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex5 {
    public static double fact(int x){
        
        double suma = 0;
        
        if(x == 0){
            return 1;
        }
        
        
        for(int i = 1; i <= x; i++){
            if(i == 1){
                suma = i;
            }
            else{
                suma = suma * i;
            }
        }
        
        
        return suma;
    }
    
    public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        int n;
        double sumae = 0;
        
        //System.out.print("Introdueix el nombre n: ");
        n = entrada.nextInt();
        
        for(int i = 0; i <= n; i++){
            sumae += 1 / fact(i);
        }
        
        System.out.printf("El nombre e amb precisió %d és: %.10f", n, sumae);
    }
}
