package uf1.a5;

import java.util.Scanner;

public class Ex07 {
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);
        String valorsStr;
        String valorar[];
        int valors[];
        int valorGran = 0, valorPetit = 0;
        int posicioGran = 0, posicioPetit = 0;

        System.out.println("Introdueix en una línia una llista de nombres separats per comes:");
        valorsStr = entrada.nextLine();
        valorar = valorsStr.split(",");
        valors = new int[valorar.length];

        for(int i = 0; i < valorar.length; i++){
            valors[i] = Integer.parseInt(valorar[i]);
        }

        for(int i=0; i < valors.length; i++){
            if(i==0){
                valorPetit = valors[i];
                posicioPetit = i;
            }
            else{
                if(valors[i] < valorPetit){
                    valorPetit = valors[i];
                    posicioPetit = i;
                }
            }
            if(valors[i] > valorGran){
                valorGran = valors[i];
                posicioGran = i;
            }
        }

        System.out.println("El valor més gran: " + valorGran + " a la posició " + posicioGran);
        System.out.println("El valor més petit: " + valorPetit + " a la posició " + posicioPetit);
    }
}
