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
public class Viaje {
    
    private int id_viaje;
    private int id_horario;
    private LocalDate fecha;
    private int plazas_ocupadas;

    /**
     * 
     * @param id_viaje Parámetro id de viaje
     * @param id_horario Parámetro id del horario que corresponde el viaje
     * @param fecha Parámetro fecha de ese viaje
     * @param plazas_ocupadas Parámetro plazas ocupadas de bus en ese viaje, maximo 8
     */
    public Viaje(int id_viaje, int id_horario, LocalDate fecha, int plazas_ocupadas) {
        this.id_viaje = id_viaje;
        this.id_horario = id_horario;
        this.fecha = fecha;
        this.plazas_ocupadas = plazas_ocupadas;
    }

    public void setId_viaje(int id_viaje) {
        this.id_viaje = id_viaje;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }
    
    public void setPlazas_ocupadas(int plazas_ocupadas) {
        this.plazas_ocupadas = plazas_ocupadas;
    }

    public int getId_viaje() {
        return id_viaje;
    }

    public int getId_horario() {
        return id_horario;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public int getPlazas_ocupadas() {
        return plazas_ocupadas;
    }

    @Override
    public String toString() {
        return "Viaje{" + "id_viaje=" + id_viaje + ", id_horario=" + id_horario + ", fecha=" + fecha + ", plazas_ocupadas=" + plazas_ocupadas + '}';
    }
}
