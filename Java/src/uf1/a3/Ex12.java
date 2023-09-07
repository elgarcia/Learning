/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a3;

/**
 *
 * @author Elias
 */
public class Ex12 {
    public static final int N = 5;
    public static final int MAX = 100;
    public static void main(String[] args) {
        int valor = 1, ultim;
        System.out.println("Els multiples de" + N + " majors que 1 i menors que " + MAX + " són: ");
        System.out.print(N);
        ultim = ((MAX - 1)/N);
        
        for(int i = 2; i < ultim -1; i++){
            System.out.print(", " + i*N);
        }
        System.out.println(" i " + ultim*N);
    }
 
}
