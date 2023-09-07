package uf1.a4;

import java.util.Scanner;

public class Ex09 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int dni, dni_num;
        char lletra_dni = ' ';

        System.out.println("Introdueix la part numèrica del DNI: ");
        dni = entrada.nextInt();
        entrada.nextLine();

        dni_num = dni % 23;

        switch (dni_num) {
            case 0:
                lletra_dni = 'T';
                break;
            case 1:
                lletra_dni = 'R';
                break;
            case 2:
                lletra_dni = 'W';
                break;
            case 3:
                lletra_dni = 'A';
                break;
            case 4:
                lletra_dni = 'G';
                break;
            case 5:
                lletra_dni = 'M';
                break;
            case 6:
                lletra_dni = 'Y';
                break;
            case 7:
                lletra_dni = 'F';
                break;
            case 8:
                lletra_dni = 'P';
                break;
            case 9:
                lletra_dni = 'D';
                break;
            case 10:
                lletra_dni = 'X';
                break;
            case 11:
                lletra_dni = 'B';
                break;
            case 12:
                lletra_dni = 'N';
                break;
            case 13:
                lletra_dni = 'J';
                break;
            case 14:
                lletra_dni = 'Z';
                break;
            case 15:
                lletra_dni = 'S';
                break;
            case 16:
                lletra_dni = 'Q';
                break;
            case 17:
                lletra_dni = 'V';
                break;
            case 18:
                lletra_dni = 'H';
                break;
            case 19:
                lletra_dni = 'L';
                break;
            case 20:
                lletra_dni = 'C';
                break;
            case 21:
                lletra_dni = 'K';
                break;
            case 22:
                lletra_dni = 'E';
                break;
            default:
                break;

        }

        System.out.print("El DNI amb lletra és: " + dni + "-" + lletra_dni);
    }
}
