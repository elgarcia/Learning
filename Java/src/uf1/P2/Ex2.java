/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uf1.P2;

import java.util.Scanner;

/**
 *
 * @author Elias
 */
public class Ex2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a, b, c;
        
        do{
        //System.out.print("Introdueix un nombre a: ");
        a = entrada.nextInt();
        } while(a <= 0);
        do{
        //System.out.print("Introdueix un nombre b: ");
        b = entrada.nextInt();
        } while((b <= 0));
        
        do{
        //System.out.print("Introdueix un nombre c: ");
        c = entrada.nextInt();
        } while(c <= 0);
        
        for(int i = 1; i <= c; i ++){
            if((i%a == 0) && (i%b==0)){
                System.out.println("Oompa-Loompa");
            }
            else{
                if(i % a == 0){
                    System.out.println("Oompa");
                }
                else{
                    if(i % b == 0){
                        System.out.println("Loompa");
                    }
                    else{
                        System.out.println(i);
                    }
                }
            }
        }
    }
}
