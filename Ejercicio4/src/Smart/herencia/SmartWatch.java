package Smart.herencia;

import Smart.clases.SmartDevice;

public class SmartWatch extends SmartDevice {
    private int serie;

    //constructores

    public SmartWatch() {
    }

    public SmartWatch(int serie, String marca, String modelo, String color) {
        super(marca, modelo, color);
        this.serie = serie;
    }

    //metodos

    public int getSerie() {
        return this.serie;
    }

    public void setSerie(int serie) {
        this.serie = serie;
    }

}
