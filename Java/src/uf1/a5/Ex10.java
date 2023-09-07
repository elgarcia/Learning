package uf1.a5;

public class Ex10 {
    public static final int MAX = 99;
    public static final int MIN = 10;
    public static void main(String[] Args){
        int matriu10[][] = new int[10][10];
        

        System.out.println("        0   1   2   3   4   5   6   7   8   9   ");
        System.out.println("------------------------------------------------");
        
        for(int i = 0; i<10; i++){
            for(int j= 0; j<10; j++){
                int N = MIN + (int)(Math.random()*(MAX-MIN+1));
                matriu10[i][j] = N;
            }
        }


        for(int i = 0; i < 10; i++){
            for(int j = 0; j < 9; j++){
                if(j == 0){
                    System.out.print(" " + i + " |    " + matriu10[i][j]);
                }
                if(j==8){
                    System.out.println("  " + matriu10[i][j]);
                }else{
                    System.out.print("  " + matriu10[i][j]);
                }
                
            }
        }
    }
}
