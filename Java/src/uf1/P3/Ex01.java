package uf1.P3;

import java.util.Scanner;

public class Ex01 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        String frase;
        int nVocals = 0;

        // System.out.println("Escribiu una frase: ");
        frase = entrada.nextLine();

        for (int i = 0; i < frase.length(); i++) {
            switch (frase.charAt(i)) {
                case 'A':
                case 'À':
                case 'Á':
                case 'a':
                case 'à':
                case 'á':
                case 'E':
                case 'É':
                case 'È':
                case 'e':
                case 'è':
                case 'é':
                case 'I':
                case 'Í':
                case 'Ì':
                case 'Ï':
                case 'i':
                case 'í':
                case 'ì':
                case 'ï':
                case 'O':
                case 'Ò':
                case 'Ó':
                case 'Ö':
                case 'o':
                case 'ò':
                case 'ó':
                case 'ö':
                case 'U':
                case 'Ú':
                case 'Ù':
                case 'u':
                case 'ú':
                case 'ù':
                case 'ü':
                    nVocals++;
                    break;
                default:
                    break;

            }
        }

        System.out.println("La frase conté " + nVocals + " vocals.");
    }
}
