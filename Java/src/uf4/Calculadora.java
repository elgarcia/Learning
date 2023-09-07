package uf4;

import java.util.Scanner;

import uf4.Operacio;

public class Calculadora {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        Operacio[] ultimesOperacions = new Operacio[10];
        int estat, aux = 0, aux2 = 0;
        boolean s = true;

        do {
            System.out.println("Calculator: ");
            System.out.println("1.- Realitza operacio");
            System.out.println("2.- Mostra darreres operacions");
            System.out.println("3.- Sortir");
            estat = entrada.nextInt();

            switch (estat) {
                case 1:
                    ultimesOperacions[aux] = new Operacio();
                    System.out.println("Introdueix operand 1: ");
                    ultimesOperacions[aux].setOperand1(entrada.nextDouble());
                    System.out.println("Introdueix operand 2: ");
                    ultimesOperacions[aux].setOperand2(entrada.nextDouble());
                    entrada.nextLine();
                    System.out.println("Introdueix operacio:");
                    ultimesOperacions[aux].setTipus(entrada.nextLine().charAt(0));
                    switch (ultimesOperacions[aux].tipus) {
                        case '+':
                            ultimesOperacions[aux].setResultat(ultimesOperacions[aux]
                                    .suma(ultimesOperacions[aux].operand1, ultimesOperacions[aux].operand2));
                            System.out.println("Resultat:");
                            System.out.println(ultimesOperacions[aux].getResultat());
                            break;
                        case '-':
                            ultimesOperacions[aux].setResultat(ultimesOperacions[aux]
                                    .resta(ultimesOperacions[aux].operand1, ultimesOperacions[aux].operand2));
                            System.out.println("Resultat:");
                            System.out.println(ultimesOperacions[aux].getResultat());

                            break;
                        case 'x':
                            ultimesOperacions[aux].setResultat(ultimesOperacions[aux]
                                    .multiplicacio(ultimesOperacions[aux].operand1, ultimesOperacions[aux].operand2));
                            System.out.println("Resultat:");
                            System.out.println(ultimesOperacions[aux].getResultat());
                            break;
                        case '/':
                            ultimesOperacions[aux].setResultat(ultimesOperacions[aux]
                                    .diviso(ultimesOperacions[aux].operand1, ultimesOperacions[aux].operand2));
                            System.out.println("Resultat:");
                            System.out.println(ultimesOperacions[aux].getResultat());
                            break;
                        default:
                            break;
                    }
                    aux++;
                    aux2++;
                    if (aux > 9) {
                        aux = 0;
                    }
                    if (aux2 > 9){
                        aux = 9;
                    }
                    break;
                case 2:
                    for (int i = 0; i < aux2; i++) {
                        System.out.print("Operacio " + i + " : ");
                        System.out.println(ultimesOperacions[i].operand1 + " " + ultimesOperacions[i].tipus + " "
                                + ultimesOperacions[i].operand2 + " = " + ultimesOperacions[i].resultat);
                    }
                    System.out.println("Pulsa una tecla per continuar...");
                    entrada.nextLine();
                    break;
                case 3:
                    s = false;
                    break;
                default:
                    break;
            }

        } while (s);

    }

}
