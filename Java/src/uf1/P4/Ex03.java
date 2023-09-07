package uf1.P4;

import java.util.Scanner;

public class Ex03 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        int nota, notes[] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
        boolean aux = true;

        while (aux) {
            //System.out.println("Introdueix una nota:");
            nota = entrada.nextInt();
            if ((nota >= 0) && (nota <= 10)) {
                notes[nota]++;
            } else {
                aux = false;
            }
        }

        for(int i= 0; i < notes.length; i++){
            System.out.println(notes[i]);
        }
    }
}
