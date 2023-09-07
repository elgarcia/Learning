package uf1.a4;

import java.util.Scanner;

public class Ex02 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase1, frase2;

        System.out.println("Introdueix una frase:");
        frase1 = entrada.nextLine();

        System.out.println("Introdueix una altra frase:");
        frase2 = entrada.nextLine();
        
        if(frase1.contains(frase2)){
            System.out.println("La primera frase conté la segona");
        }
        else{
            System.out.println("La priemra frase NO conté la segona");
        }
    }
}
