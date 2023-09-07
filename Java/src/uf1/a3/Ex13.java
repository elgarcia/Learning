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
public class Ex13 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor = 0, quocient, residu;
        
        do{
        System.out.print("Introdueixi un nombre natural: ");
        
        if((entrada.hasNextInt())){
            valor = entrada.nextInt();
            if(valor > 0){
                for(int i= 1; i <=10; i++){
                    quocient = valor / i;
                    residu = valor % i;
                    System.out.printf("%2d dividit per %2d dona: quocient = "
                            + "%2d i residu = %2d%n", valor, i, quocient, residu);
                }
            }
            else{
                System.out.println("ERROR: el valor no és correcte.");
            }
        }
        else{
            System.out.println("ERROR: el valor no és correcte.");
        }
        entrada.nextLine();
         } while ((valor <= 0));
        System.out.println("Prem ENTER per acabar...");
        entrada.nextLine();

        
    }
}
