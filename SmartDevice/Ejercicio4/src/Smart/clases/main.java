package Smart.clases;

import Smart.herencia.SmartPhone;
import Smart.herencia.SmartWatch;

public class main {
    public static void main(String[] Args) {
        SmartDevice smart;
        SmartWatch smartwatch11;
        SmartPhone smartphone1;

        smartwatch11 = new SmartWatch(1, "Apple", "Watch", "Negro");
        smartphone1 = new SmartPhone("iOS", 64, "Apple", "iPhone11", "negro");

        System.out.println("SmartWatch:");
        System.out.println(smartwatch11.getMarca());
        System.out.println(smartwatch11.getModelo());
        System.out.println(smartwatch11.getColor());
        System.out.println(smartwatch11.getSerie());
        System.out.println("SmartPhone:");
        System.out.println(smartphone1.getMarca());
        System.out.println(smartphone1.getModelo());
        System.out.println(smartphone1.getCapacidad());
        System.out.println(smartphone1.getSistemaOperativo());
        System.out.println(smartphone1.getColor());

    }
}
