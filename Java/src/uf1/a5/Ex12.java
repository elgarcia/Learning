package uf1.a5;

public class Ex12 {
    public static int MIN = 0;
    public static int MAX = 10;
    public static int MAX2 = 20;
    public static void main(String[] Args){
        String[] vector1 = {"Blas", "Sofía", "José", "Albert", "Manuel", "Ricard", "Abel", "Xavier", "Oriol", "Pere"};
        String[] vector2 = {"Morata", "Castilla", "Galan", "Díez", "Calatayud", "Crespo", "García", "Morales", "Casales", "Franco", "Fernandez", "Rodríguez", "Gonzalez", 
            "López", "Muñoz", "Sabina", "Varela", "Alvarez", "Guzman"};


        for(int i = 0; i < 3; i++){
            int N = MIN + (int)(Math.random()*(MAX-MIN+1));
            int N2 = MIN + (int)(Math.random()*(MAX2-MIN+1));

            if(i == 0){
                System.out.print(vector1[N]);
            }
            else{
                System.out.print(" " + vector2[N2]);
            }
        }

    }
}
