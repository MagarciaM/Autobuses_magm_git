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
public class Billete {
    
    private Seleccionado objSeleccionado;

    public Billete(Seleccionado objSeleccionado) {
        this.objSeleccionado = objSeleccionado;
    }

    public void setObjSeleccionado(Seleccionado objSeleccionado) {
        this.objSeleccionado = objSeleccionado;
    }

    public Seleccionado getObjSeleccionado() {
        return objSeleccionado;
    }

    @Override
    public String toString() {
        return "Billete{" + "objSeleccionado=" + objSeleccionado + '}';
    }
}
