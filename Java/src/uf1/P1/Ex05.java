/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P1;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex05 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int mes;
        
        //System.out.print("Introdueix mes de l'any: ");
        mes = entrada.nextInt();
        
        if(mes > 12 || mes < 0){
            System.out.print("Mes incorrecte.");
        }
        else{
            switch(mes){
                case 1:
                    System.out.print("Número de dies: 31.");
                    break;
                case 2:
                    System.out.print("Número de dies: 28.");
                    break;
                case 3:
                    System.out.print("Número de dies: 31.");
                    break;
                case 4:
                    System.out.print("Número de dies: 30.");
                    break;
                case 5:
                    System.out.print("Número de dies: 31.");
                    break;
                case 6:
                    System.out.print("Número de dies: 30.");
                    break;
                case 7:
                    System.out.print("Número de dies: 31.");
                    break;
                case 8:
                    System.out.print("Número de dies: 31.");
                    break;
                case 9:
                    System.out.print("Número de dies: 30.");
                    break;
                case 10:
                    System.out.print("Número de dies: 31.");
                    break;
                case 11:
                    System.out.print("Número de dies: 30.");
                    break;
                case 12:
                    System.out.print("Número de dies: 31.");
                default:
                    break;
            }
        }
    }
}
