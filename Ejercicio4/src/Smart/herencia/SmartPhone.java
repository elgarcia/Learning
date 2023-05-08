package Smart.herencia;

import Smart.clases.SmartDevice;

public class SmartPhone extends SmartDevice{
    private String SistemaOperativo;
    private int Capacidad;

    //constructores

    public SmartPhone() {
    }

    public SmartPhone(String SistemaOperativo, int Capacidad, String marca, String modelo, String color) {
        super(marca, modelo, color);
        this.SistemaOperativo = SistemaOperativo;
        this.Capacidad = Capacidad;
    }

    //metodos

    public String getSistemaOperativo() {
        return this.SistemaOperativo;
    }

    public void setSistemaOperativo(String SistemaOperativo) {
        this.SistemaOperativo = SistemaOperativo;
    }

    public int getCapacidad() {
        return this.Capacidad;
    }

    public void setCapacidad(int Capacidad) {
        this.Capacidad = Capacidad;
    }

}
