package uf1.a5;

public class Ex01 {
    public static void main(String[] Args){
        int numeros[] = new int[10];
        int principi = 100;

        for(int i = 0; i <numeros.length; i++){
            if(i == 0){
                numeros[i] = principi;
            }
            else{
                numeros[i] = numeros[i-1] + 1;
            }
        }

        for(int i = 0; i <numeros.length; i++){
            System.out.println("El valor de la posicio " + i + " es: " + numeros[i]);
        }
    }
}
