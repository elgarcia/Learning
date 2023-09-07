/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Acepta_el_reto;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Num122 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int alturaant = -2, aux = 0, aux2, aux3, auxav = 0, contador = 0;
        String altura;
        String etapastr[];
        int etapa[], avituallamiento[] = {}, reps[] = {};

        do {
            aux2 = 0;
            aux3 = 0;

            System.out.print("Introduce altura de la etapa: ");
            altura = entrada.nextLine();
            etapastr = altura.split(" ", -1);

            etapa = new int[etapastr.length];

            for (int i = 0; i < etapastr.length; i++) {
                etapa[i] = Integer.parseInt(etapastr[i]);
            }

            for (int i = 0; i < etapa.length; i++) {
                if ((i != 0) && (etapa[i] == etapa[i - 1]) && (aux == 0)) {
                    aux = etapa[i];
                    auxav = i;
                    aux2++;
                } else {
                    if ((i != 0) && (etapa[i] == aux)) {
                        aux2++;
                    } else {
                        if (aux2 > aux3) {
                            aux3 = aux2;
                            reps[contador] = aux3;
                            avituallamiento[contador] = auxav - 1;
                        }
                        aux = 0;
                        aux2 = 0;
                    }
                }

            }
            contador++;
        } while ((etapa[0] != -1));

        for(int i = 0; i < avituallamiento.length; i++){
            if(avituallamiento[i] != -1){
                System.out.println(avituallamiento[i] + " " + reps[i]);
            }
            else{
                System.out.println("HOY NO COMEN");
            }
        }
    }
}
