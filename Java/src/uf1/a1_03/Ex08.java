/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_03;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex08 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        float velocitat, espai, temps;
        
        System.out.print("Quin espai ha recorregut el projectil (en km)? ");
        espai = entrada.nextFloat();
        System.out.println("");
        System.out.print("Quant temps ha trigat (en segons)?" );
        temps = entrada.nextFloat();
        
        velocitat = (float) (espai*Math.pow(10, 3))/temps;
        
        System.out.println("La velocitat del projectil ha estat: " + velocitat + " m/s");
    }
    
}
