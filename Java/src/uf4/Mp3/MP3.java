package uf4.Mp3;

import java.util.Scanner;

public class MP3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int aux = 0;
        
        Pantalla pantallaVisualitzacio;

        
        
        pantallaVisualitzacio = new Pantalla();

        do{
            pantallaVisualitzacio.mostra();
            aux = entrada.nextInt();
            switch(aux){
                case 1:
                pantallaVisualitzacio.canviaCanco.setEstat(1);
                break;
                case 2:
                pantallaVisualitzacio.pujarVolum.setEstat(1);
                break;
                case 3:
                pantallaVisualitzacio.baixarVolum.setEstat(1);
                break;
                case 4:
                pantallaVisualitzacio.veureBateria.setEstat(1);
                break;
                case 5:
                pantallaVisualitzacio.canviaColor.setEstat(1);
                break;
                case 6:
                pantallaVisualitzacio.apagar.setEstat(1);
                break;
                default:
                break;
            }
        } while(pantallaVisualitzacio.apagar.getEstat() != 1);
    }

}
