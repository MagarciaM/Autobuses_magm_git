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
public class Viajero {
    
    private int idViajero;
    private String dni;
    private String nombre;
    private String apellidos;
    private LocalDate fechaNac;

    public Viajero(String dni, String nombre, String apellidos, LocalDate fechaNac) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.fechaNac = fechaNac;
    }
    
    public Viajero(int idViajero, String dni, String nombre, String apellidos, LocalDate fechaNac) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.fechaNac = fechaNac;
    }
    
    public Viajero(int idViajero) {
        this.idViajero = idViajero;
    }

    public void setIdViajero(int idViajero) {
        this.idViajero = idViajero;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setFechaNac(LocalDate fechaNac) {
        this.fechaNac = fechaNac;
    }

    public int getIdViajero() {
        return idViajero;
    }

    public String getDni() {
        return dni;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public LocalDate getFechaNac() {
        return fechaNac;
    }

    @Override
    public String toString() {
        return "Viajero{" + "idViajero=" + idViajero + ", dni=" + dni + ", nombre=" + nombre + ", apellidos=" + apellidos + ", fechaNac=" + fechaNac + '}';
    }
}
