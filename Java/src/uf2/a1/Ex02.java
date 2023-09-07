package uf2.a1;

import java.util.Scanner;

public class Ex02 {
    public static int suma(int x, int y){
        int resposta = 0;

        resposta = x + y;

        return resposta;

    }
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int x, y, z;

        System.out.println("Introdueix un valor x:");
        x = entrada.nextInt();
        System.out.println("Introdueix un valor y:");
        y = entrada.nextInt();

        z = suma(x, y);

        System.out.println("El valor de la suma és: " + z);
    }
}
