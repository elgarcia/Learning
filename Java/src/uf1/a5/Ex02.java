package uf1.a5;

public class Ex02 {

    public static final int MAX = 99;
    public static final int MIN = 10;

    public static void main(String[] Args){
        int nums[] = new int[10];

        for(int i = 0; i <nums.length; i++){
            int N = MIN + (int)(Math.random()*(MAX-MIN+1));
            nums[i] = N;
        }

        for(int i = 0; i<nums.length; i++){
            System.out.println("El valor de la posició " + i + " es: " + nums[i]);
        }

    }
}
