/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author magm
 */
public class Ruta {
    
    // Variables
    private int id;
    private int id_estacion_origen;
    private int id_estacion_destino;
    private int distancia;
    private float precio;
    
    /**
     * Contructor de la clase Ruta con todos los parametros
     * @param id
     * @param id_estacion_origen
     * @param id_estacion_destino
     * @param distancia
     * @param precio 
     */
    public Ruta(int id, int id_estacion_origen, int id_estacion_destino, int distancia, float precio) {
        this.id = id;
        this.id_estacion_origen = id_estacion_origen;
        this.id_estacion_destino = id_estacion_destino;
        this.distancia = distancia;
        this.precio = precio;
    }
    
    // Set Y Get

    public void setId(int id) {
        this.id = id;
    }

    public void setId_estacion_origen(int id_estacion_origen) {
        this.id_estacion_origen = id_estacion_origen;
    }

    public void setId_estacion_destino(int id_estacion_destino) {
        this.id_estacion_destino = id_estacion_destino;
    }

    public void setDistancia(int distancia) {
        this.distancia = distancia;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public int getId_estacion_origen() {
        return id_estacion_origen;
    }

    public int getId_estacion_destino() {
        return id_estacion_destino;
    }

    public int getDistancia() {
        return distancia;
    }

    public float getPrecio() {
        return precio;
    }
    
    //toString

    @Override
    public String toString() {
        return "Ruta{" + "id=" + id + ", id_estacion_origen=" + id_estacion_origen + ", id_estacion_destino=" + id_estacion_destino + ", distancia=" + distancia + ", precio=" + precio + '}';
    }
    
}
