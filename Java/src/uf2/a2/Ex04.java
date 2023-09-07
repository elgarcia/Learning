package uf2.a2;

import java.util.Scanner;

public class Ex04 {
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int opcio;

        do{
        System.out.println("+-------------------------------------------+");
        System.out.println("| Benvinguts al menu, escolliu una opció:   |");
        System.out.println("| 1.- Calculadora                           |");
        System.out.println("| 2.- Figures 2D                            |");
        System.out.println("| 3.- Figures 3D                            |");
        System.out.println("| 4.- Sortir                                |");
        System.out.println("+-------------------------------------------+");
        
        opcio = entrada.nextInt();
        }while(opcio != 4);
    }
}
