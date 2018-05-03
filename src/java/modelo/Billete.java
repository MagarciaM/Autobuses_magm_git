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
    private String localizador;
    private Cliente cliente;

    /**
     * Contructor
     * @param objSeleccionado Objeto de la clase Selecionado
     */
    public Billete(Seleccionado objSeleccionado) {
        this.objSeleccionado = objSeleccionado;
    }
     /**
      * Contructor
      * @param objSeleccionado Objeto de la clase Selecionado
      * @param localizador String que hace refencia al lozalizador
      * @param cliente Objeto de la clase Cliente
      */
    public Billete(Seleccionado objSeleccionado, String localizador, Cliente cliente) {
        this.objSeleccionado = objSeleccionado;
        this.localizador = localizador;
        this.cliente = cliente;
    }
    
    public void setObjSeleccionado(Seleccionado objSeleccionado) {
        this.objSeleccionado = objSeleccionado;
    }

    public void setLocalizador(String localizador) {
        this.localizador = localizador;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Seleccionado getObjSeleccionado() {
        return objSeleccionado;
    }

    public String getLocalizador() {
        return localizador;
    }

    public Cliente getCliente() {
        return cliente;
    }

    @Override
    public String toString() {
        return "Billete{" + "objSeleccionado=" + objSeleccionado + ", localizador=" + localizador + ", cliente=" + cliente + '}';
    }

    
}
