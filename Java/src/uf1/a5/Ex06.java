package uf1.a5;

import java.util.Scanner;

public class Ex06 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        int nombren, trobar, aux = 0;

        System.out.print("Introdueix un nombre natural: ");
        nombren = entrada.nextInt();
        entrada.nextLine();

        int valors[] = new int[nombren];

        System.out.println("Introdueix una llista de " + nombren + " nombres separats per espais: ");

        for(int i = 0; i <valors.length; i++){
            valors[i] = entrada.nextInt();
        }

        System.out.print("Valor a trobar: ");
        trobar = entrada.nextInt();


        for(int i = 0; i <valors.length; i++){
            if(valors[i] == trobar){
                aux = 1;
                System.out.println(trobar + " trobat a la posició " + i);
            }
        }
        if(aux == 0){
            System.out.println("No s'ha trobat el valor " + trobar);
        }
    }
}
