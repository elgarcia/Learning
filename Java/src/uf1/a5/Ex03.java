package uf1.a5;

public class Ex03 {
    public static void main(String[] Args){
        char lletres[] = new char[10];
        int ini = 97;
        for(int i = 0; i <lletres.length; i++){
            lletres[i] = (char)ini;
            ini++;
        }

        for(int i=0; i <lletres.length; i++){
            System.out.println("El valor de la posició " + i + " es: " + lletres[i]);
        }
    }
}
