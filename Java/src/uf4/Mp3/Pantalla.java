package uf4.Mp3;

public class Pantalla {
    static int BLAU = 1;
    static int VERMELL = 2;
    static int VERD = 3;
    static int GROC = 4;

    Boton canviaCanco, pujarVolum, baixarVolum, veureBateria, canviaColor, apagar;
    String[] cancons = { "Umbrela - Rihanna", "My humps - The black eyed peas", "Party in the USA - Miley Cyrus",
            "I gotta feeling - The black eyed peas" };
    String cancoActual;
    int color, bateria, volum;
    boolean isBateria;
    int aux = 0;

    public Pantalla() {
        canviaCanco = new Boton();
        pujarVolum = new Boton();
        baixarVolum = new Boton();
        veureBateria = new Boton();
        canviaColor = new Boton();
        apagar = new Boton();
        cancoActual = cancons[0];
        color = BLAU;
        bateria = 80;
        volum = 4;
        isBateria = false;
    }

    public void mostra() {
        isBateria = false;
        canviaCancofun();
        pujarVolumfun();
        baixarVolumfun();
        veureBateriafun();
        canviaColorfun();
        System.out.println("+-------------------------------+");
        if (isBateria) {
            System.out.println("|                  Bateria:" + bateria + "   | ");
        } else {
            System.out.println("|                               |");
        }
        if(cancoActual.equals(cancons[0])){
        System.out.printf("| \t%s\t|\n", cancoActual);
        }else{
            if(cancoActual.equals(cancons[3]))
            System.out.printf("| %s\t|\n", cancoActual);
            else{
                System.out.printf("| %s|\n", cancoActual);
            }
        }
        System.out.printf("| Volum:%d\t\tColor:%d\t|\n", volum, color);
        System.out.println("+-------------------------------+");
        System.out.println("1.- Canvia canço");
        System.out.println("2.- Pujar volum");
        System.out.println("3.- Baixar volum");
        System.out.println("4.- Veure Bateria");
        System.out.println("5.- Canviar color");
        System.out.println("6.- Apagar");
    }

    public void canviaCancofun() {
        if (canviaCanco.getEstat() == 1) {
            aux++;
            if (aux > 3) {
                aux = 0;
            }
            cancoActual = cancons[aux];
            canviaCanco.setEstat(0);
        }
    }

    public void pujarVolumfun() {
        if (pujarVolum.getEstat() == 1) {
            volum++;
            if (volum > 10) {
                volum = 10;
            }
            pujarVolum.setEstat(0);
        }
    }

    public void baixarVolumfun() {
        if (baixarVolum.getEstat() == 1) {
            volum--;
            if (volum < 0) {
                volum = 0;
            }
            baixarVolum.setEstat(0);
        }
    }

    public void veureBateriafun() {
        if (veureBateria.getEstat() == 1) {
            isBateria = true;
            veureBateria.setEstat(0);
        }
    }

    public void canviaColorfun() {
        if (canviaColor.getEstat() == 1) {
            color = (int) (Math.floor(Math.random() * (GROC - BLAU + 1) + BLAU));
            canviaColor.setEstat(0);
        }
    }
}
