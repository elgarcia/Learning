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
public class Ex10 {

    public static final int MAX = 10;

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        char resposta;
        int max = MAX, min = 0;

        System.out.println("Pensa un nombre entre 1 i 10. Provaré d'endevinar-ho!");
        int nombre = (int) (Math.random() * MAX + 1);
        System.out.print("És el " + nombre + "? Massa (a)lt, massa (b)aix o (c)orrecte? ");
        resposta = entrada.nextLine().charAt(0);
        while (resposta != 'c') {
            if (resposta == 'a') {
                max = nombre;
            }
            if (resposta == 'b') {
                min = nombre;
            }
            nombre = (int)(Math.random()*(max-min-1) + min + 1);
            System.out.print("És el " + nombre + "? Massa (a)lt, massa (b)aix o (c)orrecte? ");
            resposta = entrada.nextLine().charAt(0);
        }

        System.out.println("Genial!!! Soc el millor endevinador del mon!!!");

    }
}
