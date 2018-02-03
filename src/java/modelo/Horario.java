/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalTime;

/**
 *
 * @author magm
 */
public class Horario {
    
    // Variables
    
    private int id;
    private int id_ruta;
    private LocalTime hora_salida;
    private LocalTime hora_llegada;
    private String dia;

    /**
     * Contructor de la clase Horario con todos los parametros
     * @param id Parámetro de id de horario
     * @param id_ruta Parámetro de id de la ruta a la que corresponde el horario
     * @param hora_salida Párametro que nos idica la hora de salida
     * @param hora_llegada Párametro que nos idica la hora de llegada
     * @param dia Parámetro que nos indica si el dia el Normal ('R') o especial ('E')
     */
    public Horario(int id, int id_ruta, LocalTime hora_salida, LocalTime hora_llegada, String dia) {
        this.id = id;
        this.id_ruta = id_ruta;
        this.hora_salida = hora_salida;
        this.hora_llegada = hora_llegada;
        this.dia = dia;
    }
    
    /**
     * 
     * @param id Parámetro id de horario
     */
    public Horario(int id) {
        this.id = id;
    }
    
    // Set Y Get

    public void setId(int id) {
        this.id = id;
    }

    public void setId_ruta(int id_ruta) {
        this.id_ruta = id_ruta;
    }

    public void setHora_salida(LocalTime hora_salida) {
        this.hora_salida = hora_salida;
    }

    public void setHora_llegada(LocalTime hora_llegada) {
        this.hora_llegada = hora_llegada;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public int getId() {
        return id;
    }

    public int getId_ruta() {
        return id_ruta;
    }

    public LocalTime getHora_salida() {
        return hora_salida;
    }

    public LocalTime getHora_llegada() {
        return hora_llegada;
    }

    public String getDia() {
        return dia;
    }
    
    //toString

    @Override
    public String toString() {
        return "Horario{" + "id=" + id + ", id_ruta=" + id_ruta + ", hora_salida=" + hora_salida + ", hora_llegada=" + hora_llegada + ", dia=" + dia + '}';
    }
    
}
