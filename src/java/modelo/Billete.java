/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author magm
 */
public class Billete {
    
    private Seleccionado objSeleccionado;
    private ArrayList<Viajero> arrayViajeros;

    public Billete(Seleccionado objSeleccionado, ArrayList<Viajero> arrayViajeros) {
        this.objSeleccionado = objSeleccionado;
        this.arrayViajeros = arrayViajeros;
    }

    public void setObjSeleccionado(Seleccionado objSeleccionado) {
        this.objSeleccionado = objSeleccionado;
    }

    public void setArrayViajeros(ArrayList<Viajero> arrayViajeros) {
        this.arrayViajeros = arrayViajeros;
    }

    public Seleccionado getObjSeleccionado() {
        return objSeleccionado;
    }

    public ArrayList<Viajero> getArrayViajeros() {
        return arrayViajeros;
    }

    @Override
    public String toString() {
        return "Billete{" + "objSeleccionado=" + objSeleccionado + ", arrayViajeros=" + arrayViajeros + '}';
    }
}
