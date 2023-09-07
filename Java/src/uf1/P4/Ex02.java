package uf1.P4;

import java.util.Scanner;

public class Ex02 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);

        int valors[], cerca;
        String nums, ar[];

        System.out.println("Introdueix valors");

        nums = entrada.nextLine();
        ar = nums.split(" ");
        valors = new int[ar.length - 1];

        for(int i = 0; i < ar.length -1; i++){
            valors[i] = Integer.parseInt(ar[i]);
        }

        System.out.println("Introdueix numero a cercar:");
        cerca = entrada.nextInt();

        for(int i = 0; i < valors.length; i++){
            if(cerca == valors[i]){
                System.out.print(i + " ");
            }
        }
    }
}
