/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex12 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int numero, milers = 0, centenes = 0, decenes = 0, unitats= 0;
        String M, C, D, U;
        
        System.out.print("Introdueixi un nombre natural entre 1 i 3999: ");
        numero = entrada.nextInt();
      
        if((numero > 3999) || (numero < 0)){
            System.out.println("El nombre romans és: ERROR");
        }
        else{
        if(numero / 1000 != 0){
            milers = numero/1000;
            numero = numero%1000;
        }
        if(numero/100 != 0){
            centenes = numero/100;
            numero = numero %100;
        }
        if(numero/10 != 0){
            decenes = numero/10;
            numero = numero%10;
        }
        unitats = numero;
        
        switch(milers){
            case 1:
                M = "M";
                break;
            case 2:
                M = "MM";
                break;
            case 3:
                M = "MMM";
                break;
            default:
                M = "";
                break;
        }
        switch(centenes){
            case 1:
                C = "C";
                break;
            case 2:
                C = "CC";
                break;
            case 3:
                C = "CCC";
                break;
            case 4:
                C = "CD";
                break;
            case 5:
                C = "D";
                break;
            case 6:
                C = "DC";
                break;
            case 7:
                C = "DCC";
                break;
            case 8:
                C = "DCCC";
                break;
            case 9:
                C = "CM";
                break;
            default:
                C = "";
                break;
        }
        switch(decenes){
            case 1:
                D = "X";
                break;
            case 2:
                D = "XX";
                break;
            case 3:
                D = "XXX";
                break;
            case 4:
                D = "XL";
                break;
            case 5:
                D = "L";
                break;               
            case 6:
                D = "LX";
                break;               
            case 7:
                D = "LXX";
                break;
            case 8:
                D = "LXXX";
                break;
            case 9:
                D = "XC";
                break;
            default:
                D = "";
                break;
        }
        switch(unitats){
            case 1:
                U = "I";
                break;
            case 2:
                U = "II";
                break;
            case 3:
                U = "III";
                break;
            case 4:
                U = "IV";
                break;
            case 5:
                U = "V";
                break;
            case 6:
                U = "VI";
                break;
            case 7:
                U = "VII";
                break;
            case 8:
                U = "VIII";
                break;
            case 9:
                U = "IX";
                break;
            default:
                U = "";
                break;
        }
        
        System.out.println("El nombre romans és : " + M + C + D + U);
        }
    }
}
