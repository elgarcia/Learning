package uf2.a1;

import java.util.Scanner;

public class Ex03 {
    public static void Majorque0(int x){
        if(x > 0){
            System.out.println("El valor es més gran que 0");
        }
        else{
            if(x < 0){
                System.out.println("El valor es més petit que 0");
            }
            else{
                System.out.println("El valor es 0");
            }
        }
    }
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int x;

        System.out.println("Introduei un numero:");
        x = entrada.nextInt();

        Majorque0(x);


    }
}
