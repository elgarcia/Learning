package uf1.P3;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] Args){
    Scanner entrada = new Scanner(System.in);
    String frase, inreves = "";
    
    //System.out.println("Introdueix una cadena de caracters: ");
    frase = entrada.nextLine();
    
    for(int i= (frase.length()-1);i>-1; i--){
        inreves = inreves + frase.charAt(i);
    }
    System.out.println("La cadena a l'inrevés és: " + inreves);
    }
}
