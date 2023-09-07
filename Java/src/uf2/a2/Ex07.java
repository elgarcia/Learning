package uf2.a2;

import java.util.Scanner;

public class Ex07 {
    public static void main(String[] args){
        Scanner entrada = new Scanner(System.in);
        int casos, sudoku[][];
        boolean resol = true;

        System.out.println("Introdueix numero de casos:");
        casos = entrada.nextInt();

        for(int a = 0; a < casos; a++){
        sudoku = llegirSudoku();

        for(int i = 0; i < 9; i++){
            if(!esColumnaValida(sudoku, i)){
                resol = false;
                i = 9;
            }
            if(!esFilaValida(sudoku, i)){
                resol = false;
                i = 9;
            }
            if((i == 0) || (i == 3) || (i == 6)){
                for(int j = 0; j < 9; j = j+3){
                    if(!esRegioValida(sudoku, i, j)){
                        resol = false;
                        j = 9;
                        i = 9;
                    }
                }
            }
        }

        if(resol){
            System.out.println("SI");
        }
        else{
            System.out.println("NO");
        }
        }
    }
    
    public static int[][] llegirSudoku(){
        Scanner entrada = new Scanner(System.in);
        int matriuSudoku[][] = new int[9][9];

        for(int i = 0; i < 9; i++){
            for(int j = 0; j < 9; j++){
                System.out.println("Introdueix valor del sudoku[" + i + "][" + j + "]");
                matriuSudoku[i][j] = entrada.nextInt();
            }
        }

        return matriuSudoku;
    }
    
    public static boolean esFilaValida(int[][] sudoku, int fila){
        int aux;

        for(int j = 1; j < 10; j++){
            aux = 0;
            for(int i = 0; i < 9; i++){
                if(sudoku[fila][i] == j){
                    aux++;
                }
            }
            if(aux > 1){
                return false;
            }
        }

        return true;
    }
    
    public static boolean esColumnaValida(int[][] sudoku, int columna){
        int aux;

        for(int j = 1; j < 10; j++){
            aux = 0;
            for(int i = 0; i < 9; i++){
                if(sudoku[i][columna] == j){
                    aux++;
                }
            }
            if(aux > 1){
                return false;
            }
        }

        return true;
    }

    public static boolean esRegioValida(int[][] sudoku, int filaInicial, int columnaInicial){
        int aux;

        for(int i = 1; i < 10; i++){
            aux = 0;
            for(int j = 0; j < 3; j++){
                for(int k = 0; k < 3; k++){
                    if(sudoku[filaInicial + j][columnaInicial + k] == i){
                        aux++;
                    }
                }
            }
            if(aux > 1){
                return false;
            }
        }

        return true;
    }

}
