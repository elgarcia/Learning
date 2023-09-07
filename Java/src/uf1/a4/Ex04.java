package uf1.a4;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase1;

        System.out.print("Introdueix una frase: ");
        frase1 = entrada.nextLine();

        System.out.println("Frase en majúscules...: " + frase1.toUpperCase());
        System.out.println("Frase original........: " + frase1.toLowerCase());
    }
}
