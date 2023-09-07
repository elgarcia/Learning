/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a3;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex11 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, sumaSennar = 0, sumaParell = 0;

        
        System.out.print("Introdueix un nombre (0 per acabar): ");
        valor = entrada.nextInt();
        if(valor % 2 == 0){
            sumaParell += valor;
        }
        else{
            sumaSennar += valor;
        }
        while (valor != 0) {
            System.out.print("Introdueix un nombre (0 per acabar): ");
            valor = entrada.nextInt();
            if(valor % 2 == 0){
            sumaParell += valor;
        }
        else{
            sumaSennar += valor;
        }
        }
        
        System.out.println("La suma dels parells introduïts és: " + sumaParell);
        System.out.println("La suma dels senar introduïts és: " + sumaSennar);
    }
}
