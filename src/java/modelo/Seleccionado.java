/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Clase que contiene los datos que ha pre-seleccionado el cliente al realiar la
 * busqueda, contiene un arraylist con los valores que cambian, es decir para
 * una misma ruta las diferentes optiones que tiene
 *
 * @author magm
 */
public class Seleccionado {

    private Estacion estacionOrigen;
    private Estacion estacionDestino;
    private LocalDate fecha;
    private float precio;
    private int distancia;
    private int nBilletes;
    ArrayList<PosibleViaje> posiblesViajes;

    public Seleccionado(Estacion estacionOrigen, Estacion estacionDestino, LocalDate fecha, float precio, int distancia, int nBilletes, ArrayList<PosibleViaje> posiblesViajes) {
        this.estacionOrigen = estacionOrigen;
        this.estacionDestino = estacionDestino;
        this.fecha = fecha;
        this.precio = precio;
        this.distancia = distancia;
        this.nBilletes = nBilletes;
        this.posiblesViajes = posiblesViajes;
    }

    public void setEstacionOrigen(Estacion estacionOrigen) {
        this.estacionOrigen = estacionOrigen;
    }

    public void setEstacionDestino(Estacion estacionDestino) {
        this.estacionDestino = estacionDestino;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public void setDistancia(int distancia) {
        this.distancia = distancia;
    }

    public void setnBilletes(int nBilletes) {
        this.nBilletes = nBilletes;
    }

    public void setPosiblesViajes(ArrayList<PosibleViaje> posiblesViajes) {
        this.posiblesViajes = posiblesViajes;
    }

    public Estacion getEstacionOrigen() {
        return estacionOrigen;
    }

    public Estacion getEstacionDestino() {
        return estacionDestino;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public float getPrecio() {
        return precio;
    }

    public int getDistancia() {
        return distancia;
    }

    public int getnBilletes() {
        return nBilletes;
    }

    public ArrayList<PosibleViaje> getPosiblesViajes() {
        return posiblesViajes;
    }

    @Override
    public String toString() {
        return "Seleccionado{" + "estacionOrigen=" + estacionOrigen + ", estacionDestino=" + estacionDestino + ", fecha=" + fecha + ", precio=" + precio + ", distancia=" + distancia + ", nBilletes=" + nBilletes + ", posiblesViajes=" + posiblesViajes + '}';
    }
}
