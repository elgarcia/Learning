package uf1.P4;

import java.util.Scanner;
import java.util.Locale;

public class Ex05 {
    public static void main(String[] Args) {
        Locale.setDefault(new Locale("en", "US"));
        Scanner entrada = new Scanner(System.in);

        double quantitat;
        int bitllets[] = { 0, 0, 0, 0, 0, 0, 0 }, monedes[] = { 0, 0, 0, 0, 0, 0, 0, 0 },
                bdefault[] = { 500, 200, 100, 50, 20, 10, 5 };
        double mdefault[] = { 2, 1, 0.50, 0.20, 0.10, 0.05, 0.02, 0.01 };

        // System.out.println("Introdueix quantitat:");
        quantitat = entrada.nextDouble();

        for (int i = 0; i < 7; i++) {
            bitllets[i] = (int) quantitat / bdefault[i];
            quantitat = quantitat - (bdefault[i]*bitllets[i]);
        }

        for (int i = 0; i < 8; i++) {
            monedes[i] = (int)Math.round(((float) quantitat / mdefault[i]) *100)/100;
            quantitat = quantitat - (mdefault[i]*monedes[i]);
        }

        for (int i = 0; i < bitllets.length; i++) {
            System.out.printf("Bitllets de %3d €: %d\n", bdefault[i], bitllets[i]);
        }
        for (int i = 0; i < monedes.length; i++) {
            if (i >= 2) {
                System.out.printf("Monedes de %.2f €: %d\n", mdefault[i], monedes[i]);
            } else {
                System.out.printf("Monedes de %4d €: %d\n", (int) mdefault[i], monedes[i]);
            }
        }

    }
}
