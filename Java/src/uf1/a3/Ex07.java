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
public class Ex07 {

    public static final int PIN_TARGETA = 5555;

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int pin = 0, aux = 1;

        System.out.println("BENVINGUDA/BENVINGUT AL BANC COPERNIC.");
        System.out.print("INSEREIX EL PIN: ");
        pin = entrada.nextInt();
        while ((pin != PIN_TARGETA) && (aux < 3)) {
            System.out.println("PIN INCORRECTE. PROVA DE NOU.");
            System.out.print("INSEREIX EL PIN: ");
            pin = entrada.nextInt();
            aux++;
        }
        if(aux < 3){
            System.out.println("PIN CORRECTE. SELECCIONI L'OPERACIÓ A REALITZAR...");
            
        }
        else{
            System.out.println("HA ARRIBAT AL NOMBRE MÀXIM D’INTENTS. TARGETA RETINGUDA.\n" 
                    + "POSI’S EN CONTACTE AMB EL PERSONAL DE L’OFICINA.");
        }
    }
}
