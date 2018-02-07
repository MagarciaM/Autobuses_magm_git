/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import modelo.*;

/**
 *
 * @author magm
 */
public class Operaciones {

    // Declaro la conexión como variable
    private Connection Conexion;

    /**
     * Contrucor de la clase operaciones
     *
     * @param conexion Parámetro de la conexión con la base de datos
     */
    public Operaciones(Connection conexion) {
        this.Conexion = conexion;
    }

    /**
     * Método que genera un ArrayList de objetos Estacion con todas las
     * estaciones
     *
     * @return Devuelve un ArrayList de objetos estacion
     * @throws SQLException
     */
    public ArrayList<Estacion> getEstaciones() throws SQLException {

        ArrayList<Estacion> arrayEstacion = new ArrayList();
        String ordenSQL = "SELECT * FROM estacion";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            while (res.next()) {

                int id = res.getInt("id_estacion");
                String localidad = res.getString("localidad");
                String direccion = res.getString("direccion");
                String nombre = res.getString("nombre");

                Estacion E = new Estacion(id, localidad, direccion, nombre);
                arrayEstacion.add(E);
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
        return arrayEstacion;
    }

    /**
     * Método genera un objeto Estacion con todos sus valores a partir de una
     * localidad
     *
     * @param localidad Párametro que indica la localidad de la estacion
     * @return El método devuelve un objeto Estacion con todos sus valores
     * @throws SQLException
     */
    public int getId_estacion(String localidad) throws SQLException {

        String ordenSQL = "SELECT id_estacion FROM estacion WHERE localidad='" + localidad + "';";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            if (res.next()) {

                int id = res.getInt("id_estacion");
                return id;
            } else {
                return -1;
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     * Método que genera un ArrayList de objetos Estacion completos, que
     * contiene las estacion de destino a partir del id de una estacion de
     * origen
     *
     * @param id_estacion_origen Parámetro que indica el id de la estación de
     * origen
     * @return El método devuelve un ArayList de objetos Estacion, que contiene
     * @throws SQLException
     */
    public ArrayList<Estacion> getEstaciones_destino(int id_estacion_origen) throws SQLException {

        ArrayList<Estacion> arrayEstacion_destino = new ArrayList();

        // extraemos los id de las estaciones de destino a partir del id de estacion de origen
        String ordenSQL1 = "SELECT id_estacion_destino FROM ruta WHERE id_estacion_origen = '" + id_estacion_origen + "'";

        try {
            Statement s1 = Conexion.createStatement();
            ResultSet res1 = s1.executeQuery(ordenSQL1);

            while (res1.next()) {
                // Extraemos el id
                int id_estacion_destino = res1.getInt("id_estacion_destino");

                // Pasamos el id_destino al metodo y nos devuelve un obj_estacion completo y lo añadimos al array
                arrayEstacion_destino.add(this.getEstacion(id_estacion_destino));
            }
            return arrayEstacion_destino;

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     * Método que genera un objeto Estacion completo a partir de un id de
     * estación
     *
     * @param id_estacion Parámetro id_estacion que contiene el id de la
     * estación que queremos obtener le objeto
     * @return El método devuelve un objeto Estación completo
     * @throws SQLException
     */
    public Estacion getEstacion(int id_estacion) throws SQLException {

        String ordenSQL = "SELECT * FROM estacion WHERE id_estacion='" + id_estacion + "';";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            if (res.next()) {

                String localidad = res.getString("localidad");
                String direccion = res.getString("direccion");
                String nombre = res.getString("nombre");

                Estacion E = new Estacion(id_estacion, localidad, direccion, nombre);
                return E;
            } else {
                return null;
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }
    /**
     * Método que genera un objeto Estacion completo a partir de una localidad
     * 
     * @param localidad Parámetro id_estacion que contiene el id de la
     * estación que queremos obtener le objeto
     * @return El método devuelve un objeto Estación completo
     * @throws SQLException 
     */
        public Estacion getEstacion(String localidad) throws SQLException {

        String ordenSQL = "SELECT * FROM estacion WHERE localidad='" + localidad + "';";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            if (res.next()) {

                int id_estacion = Integer.parseInt(res.getString("id_estacion"));
                String direccion = res.getString("direccion");
                String nombre = res.getString("nombre");

                Estacion E = new Estacion(id_estacion, localidad, direccion, nombre);
                return E;
            } else {
                return null;
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     * Método que genera un objeto Empresa completo extraido de la base datos
     *
     * @return El método devuelve un objeto Empresa completo
     * @throws SQLException
     */
    public Empresa getDatos_empresa() throws SQLException {

        String ordenSQL = "SELECT * FROM datos_empresa";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            if (res.next()) {

                int id_empresa = res.getInt("id_empresa");
                String nombre = res.getString("nombre");
                String direccion = res.getString("direccion");
                String nif = res.getString("nif");
                String web = res.getString("web");
                String email = res.getString("email");

                Empresa E = new Empresa(id_empresa, nombre, direccion, nif, web, email);
                return E;
            } else {
                return null;
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     * Método que genera un objeto Ruta completo a parir de un id de estacion de
     * origen y de destino
     *
     * @param id_estacion_origen Parámetro que contiene el id de la estacion de
     * origen
     * @param id_estacion_destino Parámetro que contiene el id de la estacion de
     * destino
     * @return
     * @throws SQLException
     */
    public Ruta getRuta(int id_estacion_origen, int id_estacion_destino) throws SQLException {

        String ordenSQL = "SELECT * FROM ruta WHERE id_estacion_origen='" + id_estacion_origen + "' AND id_estacion_destino='" + id_estacion_destino + "'";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            if (res.next()) {

                int id_ruta = res.getInt("id_ruta");
                int distancia = res.getInt("distancia");
                int precio = res.getInt("precio");

                Ruta R = new Ruta(id_ruta, id_estacion_origen, id_estacion_destino, distancia, precio);
                return R;
            } else {
                return null;
            }

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     *
     * @param R Parametro obj Ruta a partir del cual vamos a extraer los
     * horarios que corresponden con el id de la misma
     * @return ArrayList<Horario> devolvemos un ArrayList con los horarios que
     * corresponden a esa ruta
     */
    public ArrayList<Horario> getHorarios(Ruta R) throws SQLException {

        ArrayList<Horario> arrayHorarios = new ArrayList();
        String ordenSQL = "SELECT * FROM horario WHERE id_ruta = '" + R.getId() + "';";

        try {
            Statement s = Conexion.createStatement();
            ResultSet res = s.executeQuery(ordenSQL);

            while (res.next()) {

                int id_horario = res.getInt("id_horario");
                int id_ruta = res.getInt("id_ruta");
                LocalTime hora_salida = res.getTime("hora_salida").toLocalTime();
                LocalTime hora_llegada = res.getTime("hora_llegada").toLocalTime();
                String dia = res.getString("dia");

                Horario H = new Horario(id_horario, id_ruta, hora_salida, hora_llegada, dia);
                arrayHorarios.add(H);
            }
            return arrayHorarios;

        } catch (SQLException sqle) {
            String msjerror = sqle.getMessage();
            //String codigo.parseInt(sqle.getErrorCode());
            throw new SQLException(msjerror, "");
        }
    }

    /**
     * Método que devuelve los viajes a los que corresponden los horarios y la
     * fecha proporcinada
     *
     * @param arrayHorarios ArrayList de horarios
     * @param fecha Parámetro fecha a partir de la cual se buscan los viajes
     * @return EL método devuelve un array de objetos viaje
     */
    public ArrayList<Viaje> getViajes(ArrayList<Horario> arrayHorarios, LocalDate fecha) throws SQLException {

        ArrayList<Viaje> arrayViajes = new ArrayList();

        for (int i = 0; i < arrayHorarios.size(); i++) {

            String ordenSQL = "SELECT * FROM viaje WHERE id_horario='" + arrayHorarios.get(i).getId() + "' AND fecha='" + fecha + "';";

            try {
                Statement s = Conexion.createStatement();
                ResultSet res = s.executeQuery(ordenSQL);

                while (res.next()) {

                    int id_viaje = res.getInt("id_viaje");
                    //int id_horario = res.getInt("id_horario");
                    //LocalDate fecha = LocalDate.parse(res.getString("fecha"));
                    int plazas_ocupadas = res.getInt("plazas_ocupadas");
                    
                    Viaje V = new Viaje(id_viaje, arrayHorarios.get(i).getId(), fecha, plazas_ocupadas);
                    arrayViajes.add(V);
                }

            } catch (SQLException sqle) {
                String msjerror = sqle.getMessage();
                //String codigo.parseInt(sqle.getErrorCode());
                throw new SQLException(msjerror, "");
            }
        }
        
        return arrayViajes;
    }
}
