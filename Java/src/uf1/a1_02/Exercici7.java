/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_02;

/**
 *
 * @author Elias
 */
public class Exercici7 {
    
    public static void main(String[] args){
        String margen = String.format("+%51s+", "").replace(' ', '-');
        int aux = 1;
        String m1 = "Sistemes informatics";
        String m2 = "Base de dades";
        String m3 = "Programació";
        String m4 = "Llenguatge de marques";
        String m5 = "Empresa i iniciativa";
        String m6 = "Formació i orientació";
        String p1 = "Robert Ferrero";
        String p2 = "Jose García";
        String p3 = "Juan Martin";
        String p4 = "Xesca Tomàs";
        String p5 = "Mercè Sitges";
        
        System.out.printf("%s %n", margen);
        System.out.printf("| " + aux + " |%27s|", m1);
        System.out.printf("%18s | %n", p1);
        System.out.printf("| " + ++aux + " |%27s|", m2);
        System.out.printf("%18s | %n", p2);
        System.out.printf("| " + ++aux + " |%27s|", m3);
        System.out.printf("%18s | %n", p3);
        System.out.printf("| " + ++aux + " |%27s|", m4);
        System.out.printf("%18s | %n", p4);
        System.out.printf("| " + ++aux + " |%27s|", m5);
        System.out.printf("%18s | %n", p5);
        System.out.printf("| " + ++aux + " |%27s|", m6);
        System.out.printf("%18s | %n", p5);
        System.out.printf("%s %n", margen);
        
    }
}
