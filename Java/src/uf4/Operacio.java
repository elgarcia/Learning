package uf4;

public class Operacio{
    double operand1, operand2, resultat;
    char tipus;

    public Operacio(){
        operand1 = 0;
        operand2 = 0;
        resultat = 0;
        tipus = ' ';
    }

    public void setOperand1(double valor){
        operand1 = valor;
    }
    public void setOperand2(double valor){
        operand2 = valor;
    }
    public void setTipus(char valor){
        tipus = valor;
    }
    public void setResultat(double valor){
        resultat = valor;
    }

    public double getResultat(){
        return resultat;
    }

    public double suma (double op1, double op2){
        return op1 + op2;
    }
    public double resta (double op1, double op2){
        return op1 - op2;
    }
    public double multiplicacio (double op1, double op2){
        return op1 * op2;
    }
    public double diviso (double op1, double op2){
        if(op2>0){
            return op1 / op2;
        }
        else{
            return -1;
        }
    }
} 
