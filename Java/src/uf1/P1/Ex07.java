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
public class Ex07 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int distancia, velocitat, temps, velocitat20, velmitja;
        
        //System.out.print("Introdueix distancia: ");
        distancia = entrada.nextInt();
        //System.out.print("Introdueix velocitat: ");
        velocitat = entrada.nextInt();
        //System.out.print("Introdueix temps: ");
        temps = entrada.nextInt();
        
        velmitja = (int)(((double)(distancia) / (double)(temps))*3600f/1000);
        velocitat20 = (velocitat*20)/100;
        
        if(velmitja < velocitat){
            System.out.print("Velocitat mitja: " + velmitja + " km/h => Dintre "
                    + "dels límits.");
        }
        if(velmitja > velocitat){
            if(velmitja > (velocitat+velocitat20)){
                System.out.print("Velocitat mitja: " + velmitja + " km/h => MULTA "
                    + "I PUNTS.");
            }
            else{
            System.out.print("Velocitat mitja: " + velmitja + " km/h => MULTA.");
            }
        }
    }
}
