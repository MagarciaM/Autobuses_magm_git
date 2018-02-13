/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalDate;

/**
 *
 * @author magm
 */
public class ViajeroAsiento extends Viajero{
    
    private int nAsiento;

    public ViajeroAsiento(String dni, String nombre, String apellidos, LocalDate fechaNac, int nAsiento) {
        super(dni, nombre, apellidos, fechaNac);
        this.nAsiento = nAsiento;
    }
    
    public ViajeroAsiento(Viajero objViajero, int nAsiento) {
        super(objViajero.getDni(), objViajero.getNombre(), objViajero.getApellidos(), objViajero.getFechaNac());
        this.nAsiento = nAsiento;
    }
    
    public ViajeroAsiento(int idViajero, int nAsiento) {
        super(idViajero);
        this.nAsiento = nAsiento;
    }

    public void setnAsiento(int nAsiento) {
        this.nAsiento = nAsiento;
    }

    public int getnAsiento() {
        return nAsiento;
    }

    @Override
    public String toString() {
        return super.toString() + "nAsiento: "+this.nAsiento; //To change body of generated methods, choose Tools | Templates.
    }
    
}
