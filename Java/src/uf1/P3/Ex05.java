package uf1.P3;

import java.util.Scanner;

public class Ex05 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String frase;
        Character lletra;
        int apareix[], aux = 0;

        //System.out.println("Introdueix una cadena de caràcters: ");
        frase = entrada.nextLine();
        //System.out.println("Introdueix una lletra: ");
        lletra = entrada.nextLine().charAt(0);

        System.out.println("El caràcter '" + lletra + "' apareix a les posicions: ");
        lletra = lletra.toLowerCase(lletra);
        frase =  frase.toLowerCase(); 
        for(int i = 0; i < (frase.length()); i++){
            if(frase.charAt(i) == lletra){
                aux++;
            }
        }
        apareix = new int[aux];
        aux = 0;
        for(int i = 0; i < (frase.length()); i++){
            if(frase.charAt(i) == lletra){
                apareix[aux] = i;
                aux++;
            }
        }
        for(int i = 0; i < (apareix.length); i++){
            if(i == apareix.length - 1){
                System.out.print(apareix[i]);
            }
            else{
            System.out.print(apareix[i] + " ");
            }
        }
    }
}
