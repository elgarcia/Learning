/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a3;

/**
 *
 * @author Elias
 */
public class ExFactorial2 {
    public static void main(String[] args) {
        int fact;
        
        for(int i= 1; i <=10; i++){
            fact = i;
            for(int j = i - 1; j > 0; j--){
                fact *= j;
            }
            
            System.out.printf("%2d! = %d%n", i, fact);
        }
    }
}
