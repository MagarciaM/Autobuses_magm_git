/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author magm
 */
public class Viaje {
    
    private int id_viaje;
    private Horario horario;
    private LocalDate fecha;
    private float duracion; // Parametro calculado
    private int plazas_ocupadas;
    ArrayList<Viajero> viajeros;

    /**
     * 
     * @param id_viaje Parámetro id de viaje
     * @param horario Parámetro obj horario que corresponde el viaje
     * @param fecha Parámetro fecha de ese viaje
     * @param plazas_ocupadas Parámetro plazas ocupadas de bus en ese viaje, maximo 8
     * @param viajeros ArrayList de viajeros, que se pueden añadir tanto obj_ViajerosAsientos como obj_Viajeros
     */

    public Viaje(int id_viaje, Horario horario, LocalDate fecha, int plazas_ocupadas, ArrayList<Viajero> viajeros) {
        this.id_viaje = id_viaje;
        this.horario = horario;
        this.fecha = fecha;
        this.plazas_ocupadas = plazas_ocupadas;
        this.viajeros = viajeros;
    }
    
    public Viaje(int id_viaje, Horario horario, LocalDate fecha, int plazas_ocupadas) {
        this.id_viaje = id_viaje;
        this.horario = horario;
        this.fecha = fecha;
        this.plazas_ocupadas = plazas_ocupadas;
    }
    
    public Viaje(Horario horario, LocalDate fecha, int plazas_ocupadas) {
        this.horario = horario;
        this.fecha = fecha;
        this.plazas_ocupadas = plazas_ocupadas;
    }

    public void setId_viaje(int id_viaje) {
        this.id_viaje = id_viaje;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }
    
    public void setPlazas_ocupadas(int plazas_ocupadas) {
        this.plazas_ocupadas = plazas_ocupadas;
    }
    
    public void setViajeros(ArrayList<Viajero> viajeros) {
        this.viajeros = viajeros;
    }

    public int getId_viaje() {
        return id_viaje;
    }

    public Horario getHorario() {
        return horario;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public float getDuracion() {
        return duracion;
    }

    public int getPlazas_ocupadas() {
        return plazas_ocupadas;
    }
    
    public ArrayList<Viajero> getViajeros() {
        return viajeros;
    }

    @Override
    public String toString() {
        return "Viaje{" + "id_viaje=" + id_viaje + ", horario=" + horario + ", fecha=" + fecha + ", duracion=" + duracion + ", plazas_ocupadas=" + plazas_ocupadas + ", viajeros=" + viajeros + '}';
    }
}
