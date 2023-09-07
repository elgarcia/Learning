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
public class Ex11 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int aux;
        String dia;
        
        System.out.print("Introdueix Introdueix un nombre del 1 al 7: ");
        aux = entrada.nextInt();
        
        switch(aux){
            case 1:
                dia = "Dilluns";
                break;
            case 2:
                dia = "Dimarts";
                break;
            case 3:
                dia = "Dimecres";
                break;
            case 4:
                dia = "Dijous";
                break;
            case 5:
                dia = "Divendres";
                break;
            case 6:
                dia = "Dissabte";
                break;
            case 7:
                dia = "Diumenge";
                break;
            default:
                dia = "Incorrecte";
        }
        
        System.out.println("El dia de la setmana és: " + dia);
    }
}
