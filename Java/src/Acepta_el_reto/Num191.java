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
public class Num191 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int numCasos, numCompartimentos, capacidadMax, difLitros;

        do {
            //System.out.print("Introduce el numero de casos: ");
            numCasos = entrada.nextInt();
        } while ((numCasos < 0));

        int LitrosFinal[] = new int[numCasos];
        
        for (int i = 0; i < numCasos; i++) {
            
            do {
                System.out.print("Introduce el numero de compartimentos: ");
                numCompartimentos = entrada.nextInt();
            } while ((numCompartimentos <= 0) || (numCompartimentos > 10000));

            do {
                System.out.print("Introduce el numero de capacidad mayor: ");
                capacidadMax = entrada.nextInt();
            } while ((capacidadMax <= 0) || (capacidadMax > 10000));

            do {
                System.out.print("Introduce los litros de diferencia adyacentes: ");
                difLitros = entrada.nextInt();
            } while ((difLitros < 0) || (difLitros > 10000));
            
            for(int j = 0; j < numCompartimentos; j++){
                LitrosFinal[i] += capacidadMax - (j*difLitros);
            }
        }
        for(int i = 0; i < numCasos; i++){
            System.out.println(LitrosFinal[i]);
        }
    }
}
