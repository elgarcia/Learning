package uf1.P4;

import java.util.Scanner;

import javax.sound.sampled.SourceDataLine;

public class Ex07 {
    public static void main(String[] Args) {
        Scanner entrada = new Scanner(System.in);
        int valor, aux = 1, filini, colini, fil, col = 0, quadratmagic[][];
        int i = 0, j = 0;

        System.out.println("Introdueix un nombre senar del 3 al 21:");
        valor = entrada.nextInt();

        while (((valor < 3) || (valor > 21)) || (valor % 2 == 0)) {
            System.out.println("Valor incorrecte");
            valor = entrada.nextInt();
        }

        quadratmagic = new int[valor][valor];

        if (valor % 2 != 0) {
            filini = i;
            colini = valor / 2 + 1;

            for (filini = 0; filini < valor*2; filini+=2) {
                fil = filini;
                for (j  = 0; j < valor; j++) {
                    fil = fil - 1;
                    if(fil < 0){
                        fil = valor - 1;
                    }
                    col = col + 1;
                    if(j == valor -1){
                        colini = col;
                    }
                    if(col == valor){
                        col = 0;
                    }
                    
                    quadratmagic[fil][col] = aux;
                    aux++;

                    
                }
            }
        }
        else{
            filini = i;
            colini = valor / 2;
            for (filini = 0; filini < valor*2; filini+=2) {
                for (j  = 0; j < valor; j++) {
                    fil = filini - j;
                    if(fil < 0){
                        fil = valor;
                    }
                    col = colini + j;
                    if(j == valor -1){
                        colini = col;
                    }
                    if(col == valor){
                        col = 0;
                    }
                    
                    quadratmagic[fil][col] = aux;
                    aux++;

                }
            }
        }

        for(i = 0; i < valor; i++){
            for(j = 0; j < valor; j++){
                if(j == valor - 1){
                    System.out.printf("%2d\n", quadratmagic[i][j]);
                }
                else{
                    System.out.printf("%2d ", quadratmagic[i][j]);
                }
            }
        }
    }
}
