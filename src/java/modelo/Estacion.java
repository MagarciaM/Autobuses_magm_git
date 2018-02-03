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
public class Estacion {
    
    // Variables
    private int id;
    private String localidad;
    private String direccion;
    private String nombre;
    
    /**
     * Contructor de la clase Estacion con todos lo parametos que corresponden a la tabla
     * @param id El parámetro id corresponde al id de la tabla estacion
     * @param localidad El parámetro localidad indica el nombre de la localidad de la estación
     * @param direccion El parámetro direccion indica la dirección donde se encuentra la estacion
     * @param nombre El parámetro nombre indica el nombre de la estacion
     */
    public Estacion(int id, String localidad, String direccion, String nombre) {
        this.id = id;
        this.localidad = localidad;
        this.direccion = direccion;
        this.nombre = nombre;
    }
    /**
     * Contructor de la clase Estacion sin parámetro id
     * @param localidad El parámetro localidad indica el nombre de la localidad de la estación
     * @param direccion El parámetro direccion indica la dirección donde se encuentra la estacion
     * @param nombre El parámetro nombre indica el nombre de la estacion 
     */
    public Estacion(String localidad, String direccion, String nombre) {
        this.localidad = localidad;
        this.direccion = direccion;
        this.nombre = nombre;
    }
    
    // Set y Get
    public void setId(int id) {
        this.id = id;
    }
    
    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public String getLocalidad() {
        return localidad;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getNombre() {
        return nombre;
    }
    
    //toString

    @Override
    public String toString() {
        return "Estacion{" + "id=" + id + ", localidad=" + localidad + ", direccion=" + direccion + ", nombre=" + nombre + '}';
    }
    
}
