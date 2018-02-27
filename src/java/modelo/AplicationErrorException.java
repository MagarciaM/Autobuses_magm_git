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

    public AplicationErrorException(String message, int codigo, String cadena) {
        //super(message);
        this.message = message;
        this.cadena = cadena;
        this.codigo = codigo;
    }

    @Override
    public String toString() {
        return "AplicationErrorException{" + "cadena=" + cadena + ", codigo=" + codigo + ", message=" + message + '}';
    }
}
