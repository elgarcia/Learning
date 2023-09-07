package uf1.a4;

import java.util.Scanner;

public class Ex07 {

    public static String accents(String paraula) {
        paraula = paraula.replaceAll("à", "a");
        paraula = paraula.replaceAll("á", "a");
        paraula = paraula.replaceAll("è", "e");
        paraula = paraula.replaceAll("é", "e");
        paraula = paraula.replaceAll("í", "i");
        paraula = paraula.replaceAll("ì", "i");
        paraula = paraula.replaceAll("ó", "o");
        paraula = paraula.replaceAll("ò", "o");
        paraula = paraula.replaceAll("ú", "u");
        paraula = paraula.replaceAll("ù", "u");
        return paraula;
    }

    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        String nom, cognoms, correu;

        System.out.print("Introdueix el teu nom: ");
        nom = entrada.nextLine();

        nom = nom.toLowerCase();
        nom = nom.replaceAll("ñ", "n");
        nom = nom.replaceAll("ç", "c");
        nom = accents(nom);

        System.out.print("Introdueix els teus cognoms: ");
        cognoms = entrada.nextLine();

        cognoms = cognoms.toLowerCase();
        cognoms = cognoms.replaceAll(" ", ".");
        cognoms = cognoms.replaceAll("ñ", "n");
        cognoms = cognoms.replaceAll("ç", "c");
        cognoms = accents(cognoms);

        System.out.println("La teva adreça de correu és:");
        System.out.println(cognoms + "." + nom + "@alumnat.copernic.cat");

    }
}
