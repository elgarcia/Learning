package uf1.a5;

import java.util.Scanner;

public class Ex13 {
    public static int MIN = 1000;
    public static int MIN2 = 0;
    public static int MAX = 5000;
    public static int MAX2 = 9;
    public static void main(String[] Args){
        Scanner entrada = new Scanner(System.in);

        boolean cond = false;
        int id, pos = 0;

        int vector1[] = new int[10];
        String aux;
        String vector2[] = {"Blas", "Sofía", "José", "Albert", "Manuel", "Ricard", "Abel", "Xavier", "Oriol", "Pere"}
        ,vector3[] = {"Morata", "Castilla", "Galan", "Díez", "Crespo", "García", "Morales", "Fernandez", "López", "Muñoz"}
        ,vector4[] = {"Morata", "Castilla", "Galan", "Díez", "Crespo", "García", "Morales", "Fernandez", "López", "Muñoz"};

        for(int i = 0; i <10; i++){
            int N = MIN + (int)(Math.random()*(MAX-MIN+1));
            int N2 = MIN2 + (int)(Math.random()*(MAX2-MIN2+1));
            vector1[i] = N;
            do{
            for(int j = 0; j < i; j++){
                    if(vector1[j] == vector1[i]){
                        N = MIN + (int)(Math.random()*(MAX-MIN+1));
                        vector1[i] = N;
                        cond = true;
                    }
                    else{
                        cond = false;
                    }
                }
            } while(cond == true);
            aux = vector2[i];
            vector2[i] = vector2[N2];
            vector2[N2] = aux;
            N2 = MIN2 + (int)(Math.random()*(MAX2-MIN2+1));
            aux = vector3[i];
            vector3[i] = vector3[N2];
            vector3[N2] = aux;
            N2 = MIN2 + (int)(Math.random()*(MAX2-MIN2+1));
            aux = vector4[i];
            vector4[i] = vector4[N2];
            vector4[N2] = aux;
        }

        System.out.print("Indiqui el id a cercar: ");
        id = entrada.nextInt();

        for(int i= 0; i <10; i++){
            if(vector1[i] == id){
                pos = i;
                i = 10;
            }
            else{
                pos = 11;
            }
        }

        if(pos == 11){
            System.out.println("Usari " + id + ": No trobat");
        } else{
        System.out.println("Usuari " + id + ": " + vector2[pos] + " " + vector3[pos] + " " + vector4[pos]);
        }
    }
}
