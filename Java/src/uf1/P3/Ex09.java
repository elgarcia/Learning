package uf1.P3;

import java.util.Scanner;

public class Ex09 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String nom, cognom, cognoms[], correu = "";

        //System.out.println("Introdueix el teu nom: ");
        nom = entrada.nextLine();
        nom = nom.replaceAll("à", "a");
        nom = nom.replaceAll("á", "a");
        nom = nom.replaceAll("é", "e");
        nom = nom.replaceAll("è", "e");
        nom = nom.replaceAll("í", "i");
        nom = nom.replaceAll("ì", "i");
        nom = nom.replaceAll("à", "a");
        nom = nom.replaceAll("ó", "o");
        nom = nom.replaceAll("ò", "o");
        nom = nom.replaceAll("ú", "u");
        nom = nom.replaceAll("ù", "u");
        nom = nom.replaceAll("ñ", "n");
        nom = nom.replaceAll("ç", "c");
        //System.out.println("Introdueix el teu cognom: ");
        cognom = entrada.nextLine();
        cognom = cognom.replaceAll("à", "a");
        cognom = cognom.replaceAll("á", "a");
        cognom = cognom.replaceAll("é", "e");
        cognom = cognom.replaceAll("è", "e");
        cognom = cognom.replaceAll("í", "i");
        cognom = cognom.replaceAll("ì", "i");
        cognom = cognom.replaceAll("à", "a");
        cognom = cognom.replaceAll("ó", "o");
        cognom = cognom.replaceAll("ò", "o");
        cognom = cognom.replaceAll("ú", "u");
        cognom = cognom.replaceAll("ù", "u");
        cognom = cognom.replaceAll("ñ", "n");
        cognom = cognom.replaceAll("ç", "c");

        nom = nom.toLowerCase();
        cognom = cognom.toLowerCase();

        correu = Character.toString(nom.charAt(0));
        cognoms = cognom.split(" ");
        for(int i = 0; i < 3; i++){
            correu = correu + cognoms[0].charAt(i);
        }
        for(int i = 0; i < 3; i++){
            correu = correu + cognoms[1].charAt(i);
        }

        System.out.println("La seva adreça de correu és: ");
        System.out.println(correu + "@alumnat.copernic.cat");
    }
}
