package uf1.a5;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        int valors[] = new int[10];

        for(int i = 0; i < valors.length; i++){
            System.out.print("Introdueix el valor de la posicio " + i + ": ");
            valors[i] = entrada.nextInt();
        }

        for(int i=0; i<valors.length; i++){
            System.out.println("El valor de la posicio " + i + " es: " + valors[i]);
        }

    }
}
