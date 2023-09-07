/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P1;

import java.util.Scanner;
import java.util.Locale;

/**
 *
 * @author Elias
 */
public class Ex09 {
    public static void main(String[] args) {
        Locale.setDefault(new Locale("en","US"));
        Scanner entrada = new Scanner(System.in);
        String op;
        float num1, num2, result = 0;
        char operacio;
        boolean okay=true;
        String[] partsOp;
        
        
        //System.out.print("Introduei operacio: ");
        op = entrada.nextLine();
        partsOp = op.split(" ");
        num1 = Float.parseFloat(partsOp[0]);
        operacio = partsOp[1].charAt(0);
        num2 = Float.parseFloat(partsOp[2]);
        
        
        switch(operacio){
            case '+':
                result = num1 + num2;
                break;
            case '-':
                result = num1 - num2;
                break;
            case '*':
                result = num1 * num2;
                break;
            case '/':
                result = num1 / num2;
                break;
            default:
                System.out.print("Operació incorrecta.");
                okay = false;
        }
        
        if(okay){
            System.out.printf("%.2f", result);
        }
    }
}
