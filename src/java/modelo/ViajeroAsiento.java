/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalDate;

/**
 * Clase herencia de Viajero, usada para añadir la variable int nAsiento que nos indica el número de asiento de viajero
 * @author magm
 */
public class ViajeroAsiento extends Viajero{
    
    private int nAsiento;
    
    /**
     * Contructor que llama al contuctor de la clase padre
     * @param dni String, nos indica el dni del viajero
     * @param nombre String, nos indica el nombre del viajero
     * @param apellidos String, nos indica los apellidos del viajero
     * @param fechaNac LocalDate, nos indica la fecha de nacimiento del viajero
     * @param nAsiento int, nos indica el número de asiento del viajero
     */
    public ViajeroAsiento(String dni, String nombre, String apellidos, LocalDate fechaNac, int nAsiento) {
        super(dni, nombre, apellidos, fechaNac);
        this.nAsiento = nAsiento;
    }
    
    /**
     * Contructor que llama al contuctor de la clase padre
     * @param objViajero Objeto de la clase Viajero, recibe y llama a la clase padre para contruir todos sus parametros
     * @param nAsiento int, nos indica el número de asiento del viajero 
     */
    public ViajeroAsiento(Viajero objViajero, int nAsiento) {
        super(objViajero.getDni(), objViajero.getNombre(), objViajero.getApellidos(), objViajero.getFechaNac());
        this.nAsiento = nAsiento;
    }
    
    /**
     * Contructor que llama al contuctor de la clase padre
     * @param idViajero int, nos indica el id que corresponde en la base de datos
     * @param nAsiento int, nos indica el número de asiento del viajero  
     */
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
