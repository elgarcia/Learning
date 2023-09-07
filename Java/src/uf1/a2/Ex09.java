/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex09 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b;
        float resultat = 0;
        char operacio;
        boolean aux = true;
        
        System.out.print("Introdueix un numero: ");
        a = entrada.nextInt();
        System.out.print("Introdueix un altre: ");
        b = entrada.nextInt();
        entrada.nextLine();
        System.out.print("Introdueix una operacio (+, -, *, /): ");
        operacio = entrada.nextLine().charAt(0);
        
        switch(operacio){
                case '+':
                    resultat = a + b;
                    break;
                case '-':
                    resultat = a - b;
                    break;
                case '*':
                    resultat = a * b;
                    break;
                case '/':
                    resultat = a / b;
                    break;
                default:
                    System.out.println("Operació incorrecta!");
                    aux = false;
                    break;
        }
        
        if(aux){
        System.out.println("El resultat de l'operació és: " + a + " " + operacio +
                " " + b + " = " + resultat);
        }
    }
}
