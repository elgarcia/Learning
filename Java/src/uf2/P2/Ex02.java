package uf2.P2;

import java.util.Scanner;

public class Ex02 {
    static Scanner entrada = new Scanner(System.in);

    public static void main(String[] args){
        int valor;
        double[] temperatures;

        valor = entrada.nextInt();
        temperatures = new double[valor];

        for(int i = 0; i < valor; i++){
            temperatures[i] = entrada.nextDouble();
        }

        ordenaSelecció2(temperatures);
    }

    static void ordenaSelecció2(double[] vector){
        double[] temperaturesOrdenades = vector;
        double aux = 0;
        int passades = 0;

        for(int i = 0; i < (vector.length - 1); i++){
            int min = i;
            for(int j = i + 1; j < vector.length; j++){
                if(temperaturesOrdenades[j] < temperaturesOrdenades[min]){
                    aux = temperaturesOrdenades[min];
                    temperaturesOrdenades[min] = temperaturesOrdenades[j];     
                    temperaturesOrdenades[j] = aux;
                    min = j;
                    
                }
                passades++;
            }
        }

        String.split()

        for(int i = 0; i < temperaturesOrdenades.length; i++){
            System.out.print(temperaturesOrdenades[i] + " ");
        }
        System.out.println();
        System.out.println("Total passades: " + passades);
    }
}
