package uf2.P2;

import java.util.Arrays;
import java.util.Scanner;

public class Ex03 {
    static Scanner entrada = new Scanner(System.in);

    public static void main(String[] args){
        int valor;
        String paisos[];

        //System.out.println("Introdueix el numero de paisos:");
        valor = entrada.nextInt();
        entrada.nextLine();

        paisos = new String[valor];

        for(int i = 0; i < valor; i++){
            //System.out.println("Introdueix un pais:");
            paisos[i] = entrada.nextLine();
        }

        Arrays.sort(paisos);

        System.out.println("Països ordenats:");
        for(int i = 0; i < paisos.length; i++){
            System.out.println(paisos[i]);
        }
    }
}
