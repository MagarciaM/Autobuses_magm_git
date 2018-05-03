/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author migue
 */
public class AplicationErrorException extends Exception{
    
    private String cadena;
    private int codigo;
    private String message;

    /**
     *  Contructor de la clase propia generada para recoger los errores de la aplicacion
     * @param message, Parámetro que recoge el msj que nos devuelve la SQLException
     * @param codigo, Parámetro que recoge el codigo de error que nos devuelve la SQLException
     * @param cadena, Parámetro que añadimos para informar acerca de la exception
     */
    public AplicationErrorException(String message, int codigo, String cadena) {
        //super(message);
        this.message = message;
        this.cadena = cadena;
        this.codigo = codigo;
    }
    
    /**
     *  Método que devuelve la cadena añadir
     * @return 
     */
    public String getCadena() {
        return cadena;
    }

    @Override
    public String toString() {
        return "AplicationErrorException{" + "cadena=" + cadena + ", codigo=" + codigo + ", message=" + message + '}';
    }
}
