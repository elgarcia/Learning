package uf1.a5;

import java.util.Scanner;

public class Ex05 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        int valors[] = new int[10];


        System.out.println("Introdueixi 10 nombres enters:");
        for(int i= 0; i < valors.length; i++){
            System.out.printf("Introdueixi enter %2d: ", i+1);
            valors[i] = entrada.nextInt();
        }
        System.out.println("El teu vector és:");
        for(int i = 0; i < valors.length; i++){
            if(i == valors.length -1){
                System.out.println(valors[i] + ".");
            }
            else{
            System.out.print(valors[i] + ", ");
            }
        }
        System.out.println("El teu vector invertit és:");
        for(int i=0; i < valors.length; i++){
            if(i == valors.length-1){
                System.out.println(valors[(valors.length-1)-i] + ".");
            }
            else{
                System.out.print(valors[(valors.length-1)-i] + ", ");
            }
        }
    }
}
