package uf1.a4;

import java.util.Scanner;

public class Ex08 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        String text;

        System.out.println("Introdueix una cadena:");
        text = entrada.nextLine();

        for(int i = 0; i < text.length(); i++){
            if (!Character.isLetter(text.charAt(i))){
                if(text.charAt(i) != ' '){
                text = text.replace(Character.toString(text.charAt(i)), "");
                i--;
            }
            }
        }
        
        System.out.println("La cadena amb només lletres i espais és:");
        System.out.println(text);
    }
}
