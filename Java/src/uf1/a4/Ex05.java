package uf1.a4;

import java.util.Scanner;

public class Ex05 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        String frase;
        Character lletra;
        int longitud, aux = 0;

        System.out.print("Introdueix una cadena de caràcters: ");
        frase = entrada.nextLine();

        System.out.print("Introdueix un caràcter: ");
        lletra = entrada.nextLine().charAt(0);

        longitud = frase.length();

        for(int i=0; i < longitud; i++){
            if(frase.charAt(i) == lletra ){
                aux++;
            }
        }
        System.out.println("El caràcter '" + lletra + "' apareix " + aux + " vegades.");
    }
}
