/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex7 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int valor, aux = 1, aux2= 0, aux3 = 2;
        
        do{
            //System.out.print("Introdueix un numero: ");
            valor = entrada.nextInt();
        } while(valor < 0); 
        
        while(aux2 != valor){
        aux = 1;
            for(int i = 2; i < aux3; i++){
                if(aux3 % i == 0){
                    aux = 0;
                    i = aux3;
                }
            }
            
            
            if((aux == 1) && (aux2 == (valor -1))){
                System.out.println(aux3 + ".");
                aux2++;
            }
            else{
                if(aux == 1){
                System.out.print(aux3 + ", ");
                aux2++;
                }
            }
            aux3++;
        }
    }
}
