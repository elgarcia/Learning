package uf1.P3;

import java.util.Scanner;

public class Ex07 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase, frase2[];
        int aux = 0;

        System.out.println("Introdueix una frase: ");
        frase = entrada.nextLine();
        
        frase = frase.toLowerCase();
        frase2 = frase.split("pepe");

        aux = frase2.length;

        System.out.println("La frase conté " + aux + " cops la seqüència \"pepe\"");
    }
}
