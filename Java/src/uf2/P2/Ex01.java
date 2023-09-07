package uf2.P2;

import java.util.Scanner;

public class Ex01{

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

        paisos = ordenaBombolla(paisos);

        System.out.println("Països ordenats:");
        for(int i = 0; i < paisos.length; i++){
            System.out.println(paisos[i]);
        }
    }

    static String[] ordenaBombolla(String[] paisos){
        String aux = "", paisosordenats[] = paisos;
        char[] abc = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U','V','W','X', 'Y', 'Z'};
        int[] numeracio = new int[paisos.length];
        int aux2 = 0;


        for(int i = 0; i < paisos.length; i++){
            for(int j = 0; j < abc.length; j++){
                if(paisos[i].charAt(0) == abc[j]){
                    numeracio[i] = j;
                    j = abc.length;
                }
            }
        }

        for(int i = 0; i < (paisos.length - 1); i++){
            for(int j = 0; j < (paisos.length - i - 1); j++){
                if(numeracio[j] > numeracio[j + 1]){
                    aux = paisosordenats[j];
                    paisosordenats[j] = paisosordenats[j + 1];
                    paisosordenats[j + 1] = aux;
                    aux2 = numeracio[j];
                    numeracio[j] = numeracio[j + 1];
                    numeracio[j + 1] = aux2;
                }
            }
        }

        return paisosordenats;
        
    }
}