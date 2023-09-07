package uf1.P3;

import java.util.Scanner;

public class Ex06 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase1, frase2;

        //System.out.println("Introdueix una frase: ");
        frase1 = entrada.nextLine();
        //System.out.println("Introdueix una altre frase: ");
        frase2 = entrada.nextLine();

        frase1 = frase1.format(frase1).replace("*", frase2);

        System.out.println("La frase modificada és: ");
        System.out.println(frase1);
    }
}
