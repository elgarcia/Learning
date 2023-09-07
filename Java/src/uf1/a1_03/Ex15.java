/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_03;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex15 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        long segons1, dia, minutl, horal, segonsl;
        int segons, minut, hora;
        
        System.out.print("Introdueixi nombre gran de segons: ");
        segons1 = entrada.nextLong();
        System.out.println("");
        
        minutl = segons1 / 60;
        segonsl = segons1%60;
        segons = (int)segonsl;
        
        horal = minutl / 60;
        minutl = minutl%60;
        minut = (int) minutl;
        
        dia = horal /24;
        horal= horal%24;
        hora = (int) horal;
        
        System.out.println(segons1 + " segons equival a " + dia + " dies, " + 
                hora + " hores, " + minut + " minuts i " + segons + " segons");
                
    }
}
