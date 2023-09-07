package uf1.P3;

import java.util.Scanner;

public class Ex03 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase;
        int mins = 0, majus = 0, altres;

        //System.out.println("Introduexi una frase: ");
        frase = entrada.nextLine();

        altres = frase.length();

        for(int i = 0; i < frase.length(); i++){
            if(Character.isUpperCase(frase.charAt(i))){
                majus++;
                altres--;
            }
            if(Character.isLowerCase(frase.charAt(i))){
                mins++;
                altres--;
            }
        }

        System.out.println("La frase conté " + majus + " majúscules");
        System.out.println("La frase conté " + mins + " minúscules");
        System.out.println("La frase conté " + altres + " altres caràcters");
    }
}
