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
public class Ex04 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        String nom, adreca, HomDon;
        int edat, telefon;
        boolean sexe;
        
        System.out.print("Digueu el nom.................................: ");
        nom = entrada.nextLine();
        System.out.print("Digueu l'edat.................................: ");
        edat = entrada.nextInt();
        entrada.nextLine();
        System.out.print("Digueu l'adreça...............................: ");
        adreca = entrada.nextLine();
        System.out.print("Digueu el telefon.............................: ");
        telefon = entrada.nextInt();
        System.out.print("Digueu el sexe (TRUE=DONA, FALSE=HOME)........: ");
        sexe = entrada.nextBoolean();
        
        if(sexe){
            HomDon = "noia";
        }
        else{
            HomDon = "noi";
        }
        
        System.out.println("Em dic " + nom + ", tinc " + edat + " anys, soc "
            + HomDon + ", la meva adreça és \"" + adreca + "\" i el meu telefon és "
            + telefon);
    }
}
