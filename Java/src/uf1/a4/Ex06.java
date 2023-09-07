package uf1.a4;

import java.util.Scanner;

public class Ex06 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        String frase, frase2 = "", aux2;
        int longitud, aux1 = 0, aux3 = 0;
        Character lletra;

        System.out.println("Introdueix una frase: ");
        frase = entrada.nextLine();

        longitud = frase.length();

        for (int i = 0; i < longitud; i++) {
            lletra = frase.charAt(i);
            if ((lletra == ' ') || i == (longitud-1)) {
                aux3 = aux1;
                for (int j = 0; j <= aux1; j++) {
                    if (frase2.length() == 0) {
                        lletra = Character.toUpperCase(frase.charAt(i - aux3));
                        aux2 = String.valueOf(lletra);
                        frase2 = aux2;
                        aux3--;
                    } else {
                        if (j == 0) {
                            lletra = Character.toUpperCase(frase.charAt(i - aux3));
                            aux2 = String.valueOf(lletra);
                            frase2 = frase2 + aux2;
                            aux3--;
                        } else {
                            aux2 = String.valueOf(frase.charAt(i - aux3));
                            frase2 = frase2 + aux2;
                            aux3--;
                        }
                    }
                }
                aux1 = 0;
            } else {
                aux1++;
            }
        }
        System.out.println("La frase amb les inicials en majúscules és: ");
        System.out.println(frase2);

    }
}
