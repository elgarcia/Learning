package uf2.a1;

import java.util.Scanner;

public class Ex04 {
    public static int numran(int max, int min){
        int numero;

        numero = (int)(Math.random()*(max - min + 1) + min);

        return numero;
    }

    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);

        int max, min, valor = 0;

        System.out.println("Introdueix un max:");
        max = entrada.nextInt();
        System.out.println("Introdueix un min:");
        min = entrada.nextInt();

        valor = numran(max, min);

        System.out.println("El valor aleatori és: " + valor);
    }
}
