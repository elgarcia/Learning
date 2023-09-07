package uf1.P4;

import java.util.Scanner;
import java.util.Locale;

public class Ex01 {
    public static void main(String[] Args){
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);

        int valors[] = new int[10];
        int suma = 0, max = 0, min = 0;

        System.out.println("Introdueix 10 valors: ");
        
        for(int i = 0; i < 10; i++){
            valors[i] = entrada.nextInt();
        }

        for(int i = 0; i < 10; i++){
            System.out.println(valors[i]);
            if(i == 0){
                min = valors[i];
            }
            if(valors[i] > max){
                max = valors[i];
            }
            if(valors[i] < min){
                min = valors[i];
            }
            suma+= valors[i];
        }

        System.out.printf("%.3f\n", suma/10.);
        System.out.println(max);
        System.out.println(min);
        System.out.println(suma);


    }
}
