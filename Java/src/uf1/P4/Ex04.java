package uf1.P4;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        int numero[];
        String val, valors[];
        boolean capi = true;

        //System.out.println("Introdueix valor: ");
        val = entrada.nextLine();
        valors = val.split("");

        if(valors.length > 18){
            numero = new int[18];
        }
        else{
            numero = new int[valors.length];
        }
        
        for(int i = 0; i < numero.length; i++){
            numero[i] = Integer.parseInt(valors[i]);
        }

        System.out.println("El nombre té " + numero.length + " xifres.");

        for(int i= 0; i < numero.length/2; i++){
            if(numero[i] != numero[(numero.length-1) - i]){
                capi = false;
                i = numero.length/2;
            } 
        }
        
        if(capi){
            System.out.println("És capicua.");
        }
        else{
            System.out.println("No és capicua.");
        }

    }
}
