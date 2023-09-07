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
public class Ex10 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int any;
        boolean traspas = false;

        System.out.print("Introdueix un any: ");
        any = entrada.nextInt();

        if (((any % 4 == 0) && (any % 100 != 0)) || (any % 400 == 0)){
            traspas = true;
        }

        if (traspas) {
            System.out.println("L'any " + any + " és de traspàs");
        } else {
            System.out.println("L'any " + any + " NO és de traspàs");
        }
    }
}
