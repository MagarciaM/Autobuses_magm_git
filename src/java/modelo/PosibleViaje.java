/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalTime;
import java.util.ArrayList;

/**
 *
 * @author magm
 */
public class PosibleViaje {
   
    private LocalTime hora_salida;
    private LocalTime hora_llegada;
    private int duracion; // Parámetro calculado
    private int plazas_ocupadas;
    ArrayList<ViajeroAsiento> viajerosAsiento;

    public PosibleViaje(LocalTime hora_salida, LocalTime hora_llegada, int plazas_ocupadas) {
        this.hora_salida = hora_salida;
        this.hora_llegada = hora_llegada;
        this.duracion = hora_salida.compareTo(hora_salida);
        this.plazas_ocupadas = plazas_ocupadas;
    }
    
    public PosibleViaje(LocalTime hora_salida, LocalTime hora_llegada, int plazas_ocupadas, ArrayList<ViajeroAsiento> viajerosAsiento) {
        this.hora_salida = hora_salida;
        this.hora_llegada = hora_llegada;
        this.duracion = hora_salida.compareTo(hora_salida);
        this.plazas_ocupadas = plazas_ocupadas;
        this.viajerosAsiento = viajerosAsiento;
    }

    public void setHora_salida(LocalTime hora_salida) {
        this.hora_salida = hora_salida;
    }

    public void setHora_llegada(LocalTime hora_llegada) {
        this.hora_llegada = hora_llegada;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public void setPlazas_ocupadas(int plazas_ocupadas) {
        this.plazas_ocupadas = plazas_ocupadas;
    }

    public void setViajerosAsiento(ArrayList<ViajeroAsiento> viajerosAsiento) {
        this.viajerosAsiento = viajerosAsiento;
    }

    public LocalTime getHora_salida() {
        return hora_salida;
    }

    public LocalTime getHora_llegada() {
        return hora_llegada;
    }

    public int getDuracion() {
        return duracion;
    }

    public int getPlazas_ocupadas() {
        return plazas_ocupadas;
    }

    public ArrayList<ViajeroAsiento> getViajerosAsiento() {
        return viajerosAsiento;
    }

    @Override
    public String toString() {
        return "PosibleViaje{" + "hora_salida=" + hora_salida + ", hora_llegada=" + hora_llegada + ", duracion=" + duracion + ", plazas_ocupadas=" + plazas_ocupadas + ", viajerosAsiento=" + viajerosAsiento + '}';
    }
    
}
