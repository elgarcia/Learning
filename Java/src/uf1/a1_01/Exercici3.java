/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.a1_01;

/**
 *
 * @author Elias
 */
public class Exercici3 {
    
    public static void main(String[] args){
        String principiFinal = String.format("+%-50s+", "").replace(' ', '-');
        String alm = "####";
        String name = "Juan Alvarez";
        String empresa = "APPLE RETAIL SPAIN SL";
        String adreça = "Madrid, MA 28002";
        
        System.out.printf("%s %n", principiFinal);
        System.out.printf("|%50s| %n", alm);
        System.out.printf("|%50s| %n", alm);
        System.out.printf("|%50s| %n", alm);
        System.out.printf("|%50s| %n", " ");
        System.out.printf("|%50s| %n", " ");
        System.out.printf("|%45s", name);
        System.out.printf("%5s| %n", "");
        System.out.printf("|%45s", empresa);
        System.out.printf("%5s| %n", "");
        System.out.printf("|%45s", adreça);
        System.out.printf("%5s| %n", "");
        System.out.printf("|%50s| %n", " ");
        System.out.printf("%s %n", principiFinal);
    }
    
}
