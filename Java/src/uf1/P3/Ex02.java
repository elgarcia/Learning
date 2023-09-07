package uf1.P3;

import java.util.Scanner;

public class Ex02 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase, aux;
        int aux1 = 0;

        //System.out.println("Introdueix una frase: ");
        frase = entrada.nextLine();

        aux = frase.replaceAll(" ", "");
        aux = aux.toLowerCase();

        if(aux.length() % 2 == 0){
            for(int i = 0; i < (aux.length()/2); i++){
                if(aux.charAt(i) != aux.charAt((aux.length())-(1+i))){
                    i = aux.length()/2;
                    aux1 = 1;
                }
            }
            if(aux1 == 0){
                System.out.println("La cadena és un palíndrom.");
            }
            else{
                System.out.println("La cadena NO és un palíndrom.");
            }
        }
        else{
            for(int i = 0; i < ((aux.length()/2) + 1); i++){
                if(aux.charAt(i) != aux.charAt((aux.length())-(1+i))){
                    i = aux.length()/2;
                    aux1 = 1;
                }
            }
            if(aux1 == 0){
                System.out.println("La cadena és un palíndrom.");
            }
            else{
                System.out.println("La cadena NO és un palíndrom.");
            }
        }
    }
}
