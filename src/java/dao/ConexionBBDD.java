/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;

/**
 * Clase para realizar la conexión con la base de datos mediante Singleton
 * @author magm
 */
public class ConexionBBDD {
    
    private static ConexionBBDD UnicaConexion = null;
    private Connection Conex;

    private ConexionBBDD() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        String connectionUrl = "jdbc:mysql://localhost:3306/bd_autobuses_magm";
        Conex = DriverManager.getConnection(connectionUrl, "root", "root");
    }

    public synchronized static ConexionBBDD GetConexion()
            throws ClassNotFoundException, SQLException {
        if (UnicaConexion == null) {
            UnicaConexion = new ConexionBBDD();
        }
        return UnicaConexion;
    }

    public Connection GetCon() {
        return Conex;
    }

    public void Destroy() throws SQLException {
        Conex.close();
    }
}
