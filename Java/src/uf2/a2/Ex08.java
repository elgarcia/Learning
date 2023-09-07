package uf2.a2;

import java.util.Scanner;

public class Ex08 {
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int aux = 0, num = 0, numPrimers[] = new int[100];

        while(aux < 100){
            if(esNombrePrimer(num, aux, numPrimers)){
                aux++;
            }
            num++;
        }

        for(int i = 0; i < aux; i++){
            if((i % 10 == 0) && (i != 0)){
                System.out.printf("%d\n", numPrimers[i]);
            }
            else{
                System.out.printf("%d\t", numPrimers[i]);
            }
        }
    }

    public static boolean esNombrePrimer(int nombre, int numPrimers, int[] primers){
        if (nombre == 0 || nombre == 1 || nombre == 4) {
            return false;
        }
        for (int x = 2; x < nombre / 2; x++) {
            // Si es divisible por cualquiera de estos números, no
            // es primo
            if (nombre % x == 0)
              return false;
          }
        primers[numPrimers] = nombre;
        return true;
    }
}
