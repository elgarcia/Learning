/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P1;

import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author Elias
 */
public class Ex02 {
    public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        float valor1, valor2, valor3;
        float aux, auxmajor, auxmedio, auxmenor;
        
        //System.out.print("Introdueix un numero: ");
        valor1 = entrada.nextFloat();
        //System.out.print("Introdueix un altre numero: ");
        valor2 = entrada.nextFloat();
        //System.out.print("Introdueix un altre numero: ");
        valor3 = entrada.nextFloat();
        
        auxmajor = valor1;
        auxmedio = valor2;
        auxmenor = valor3;
        if(auxmajor < valor2){
            auxmajor = valor2;
            auxmedio = valor1;
        }
        if(auxmedio < valor3){
                auxmedio = valor3;
                auxmenor = valor1;
        }
        if(auxmajor < auxmedio){
            aux = auxmajor;
            auxmajor = auxmedio;
            auxmedio = aux;
        }
        
        System.out.print(auxmedio);
    }
}
