/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author Elias
 */
public class Ex10 {
    public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        int nota = -1, suma = 0, aux = 0, aprovats = 0, suspesos = 0;
        float mitjana, peraprovats, persuspesos;
        
        while((nota < 0) || (nota > 10)){
        //System.out.print("Introdueix una nota: ");
        nota = entrada.nextInt();
        if((nota <= 10) && (nota >= 5)){
            aprovats++;
        }
        else{
            if((nota < 5) && (nota >= 0)){
                suspesos++;
            }
        }
        }
        
        do{
        aux++;
        suma += nota;
        //System.out.print("Introdueix una nota: ");
        nota = entrada.nextInt();
        if((nota <= 10) && (nota >= 5)){
            aprovats++;
        }
        else{
            if((nota < 5) && (nota >= 0)){
                suspesos++;
            }
        }
        } while ((nota >= 0) && (nota <= 10));
        
        mitjana = (float)suma / aux;
        peraprovats = ((float)aprovats / aux) * 100;
        persuspesos = ((float)suspesos / aux) * 100;
        
        System.out.printf("Mitjana: %.2f%n", mitjana);
        System.out.printf("Percentatge d'aprovats: %.2f%%%n", peraprovats);
        System.out.printf("Percentatge de suspesos: %.2f%%%n", persuspesos);
        
    }
}
