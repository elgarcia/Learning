package uf1.a1_01;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Elias
 */

public class Exercici2 {
    public static void main(String[] args){
        String finalPrincipi = String.format("+%-22s+", "").replace(' ', '-');
        String fecha = "2021-09-27  04:38PM";
        String litres = "Litres:      40";
        String preu = "Preu/litre:  1.38 €";
        String total = "Preu total: $ 55.20";
        String empresa = "REPSOL S.A.";
        
        System.out.printf("%s %n", finalPrincipi);
        System.out.printf("%-23s| %n", "| ");
        System.out.printf("|%17s", empresa);
        System.out.printf("%-5s| %n", "");
        System.out.printf("%-23s| %n", "| ");
        System.out.printf("%-23s| %n", "| " + fecha);
        System.out.printf("%-23s| %n", "| ");
        System.out.printf("%-23s| %n", "| " + litres);
        System.out.printf("%-23s| %n", "| " + preu);
        System.out.printf("%-23s| %n", "| ");
        System.out.printf("%-23s| %n", "| " + total);
        System.out.printf("%-23s| %n", "| ");
        System.out.printf("%s %n", finalPrincipi);
    }
}
