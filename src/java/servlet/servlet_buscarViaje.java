/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.*;
import modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author magm
 */
public class servlet_buscarViaje extends HttpServlet {

    private Connection Conexion;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Recogemos los parametros del formulario inicial
            int id_origen = Integer.parseInt(request.getParameter("origen"));
            int id_destino = Integer.parseInt(request.getParameter("destino"));
            LocalDate fecha = LocalDate.parse(request.getParameter("fecha"));
            int nBilletes = Integer.parseInt(request.getParameter("billetes"));
            
            // obtenemos la el obj ruta a partir de su origen y destino
            Ruta R = new Operaciones(Conexion).getRuta(id_origen, id_destino);
            
            // Obtenemos los objetos completos de estacion a partir de sus id
            Estacion E1 = new Operaciones(Conexion).getEstacion(id_destino);
            Estacion E2 = new Operaciones(Conexion).getEstacion(id_origen);
            
            // obtenemos los horarios que corresponden con esa ruta
            ArrayList<Horario> arrayHorarios = new Operaciones(Conexion).getHorarios(R);
            
            // obtenemos los viajes que corresponden con los horarios y la fecha indicada
            ArrayList<Viaje> arrayViajes = new Operaciones(Conexion).getViajes(arrayHorarios, fecha);
            
            // Contruimos un ArrayList de obj PosibleViaje y se lo añadimos al obj Selecionado
            /*ArrayList<PosibleViaje> array_posiblesViajes = new ArrayList();
            for (int i=0 ; i<arrayHorarios.size() ; i++) {           
                PosibleViaje Pv = new PosibleViaje(arrayHorarios.get(i).getHora_salida(), arrayHorarios.get(i).getHora_llegada(), arrayViajes.get(i).getPlazas_ocupadas());
                array_posiblesViajes.add(Pv);
                
            }*/
            
            // Recuperamos el ArrayList de Viajes que nos devuelve desde Operaciones y lo añadimos al obj Selecionado
            // Contruimos el obj Selecionado
            Seleccionado S = new Seleccionado(E1, E2, fecha, R.getPrecio(), R.getDistancia(), nBilletes, arrayViajes);

            HttpSession session = request.getSession(true);
            session.setAttribute("seleccionado",S);
            
            response.sendRedirect("vista_select_viaje1.jsp");
        } catch (SQLException sqle) {
            
        }
    }

    @Override
    public void init() throws ServletException {
        //super.init(); //To change body of generated methods, choose Tools | Templates.
        
        /* Establecemos la conexión, si no existe */
        try {
            ConexionBBDD ConexBD = ConexionBBDD.GetConexion();
            Conexion = ConexBD.GetCon();
        } catch (ClassNotFoundException cnfe) {
        } catch (SQLException sqle) {
        }
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
