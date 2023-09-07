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
public class Ex06 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int hora, minut, segon;
        
        //System.out.print("Introdueix una hora: ");
        hora = entrada.nextInt();
        if(hora > 24){
            System.out.print("Hora incorrecta");
        }
        else{
            //System.out.print("Introdueix un minut: ");
            minut = entrada.nextInt();
            if(minut >= 60){
                System.out.print("Minut incorrecte");
            }
            else{
                //System.out.print("Introdueix un segon: ");
                segon = entrada.nextInt();
                if(segon >= 60){
                   System.out.print("Segon incorrrecte");
                }
                else{
        
                    segon++;
        
                    if(segon >= 60){
                        segon = 0;
                        minut++;
                    }
                    if(minut >= 60){
                        minut = 0;
                        hora++;
                    }
                    if(hora == 24){
                        hora = 0;
                    }
                    
                    System.out.printf("Un segon després són les %02d:%02d:%02d", hora, minut, segon);
                }
            }
        }
    }
}
