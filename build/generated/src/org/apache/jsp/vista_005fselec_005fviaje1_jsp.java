package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.*;

public final class vista_005fselec_005fviaje1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title> Selección de viaje </title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css\" crossorigin=\"anonymous\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\r\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            Empresa objEmpresa = (Empresa) session.getAttribute("objEmpresa");
            Seleccionado S = (Seleccionado) session.getAttribute("seleccionado");
        
      out.write("\r\n");
      out.write("        <div class=\"contenido\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    <h1> ");
 out.print(objEmpresa.getNombre());
      out.write(" </h1>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-md-9\">\r\n");
      out.write("                        <div class=\"card text-center\">\r\n");
      out.write("                            <div class=\"card-header\">\r\n");
      out.write("                                Tu Busqueda\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"card-body col-md-4\">\r\n");
      out.write("                                    <h5 class=\"card-title\"> Estación Origen </h5>\r\n");
      out.write("                                    <p class=\"card-text\">");
 out.print(S.getEstacionOrigen().getLocalidad()); 
      out.write("</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"card-body col-md-4\">\r\n");
      out.write("                                    <h5 class=\"card-title\"> Estación Destino </h5>\r\n");
      out.write("                                    <p class=\"card-text\">");
 out.print(S.getEstacionDestino().getLocalidad()); 
      out.write("</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"card-body col-md-4\">\r\n");
      out.write("                                    <h5 class=\"card-title\"> Fecha </h5>\r\n");
      out.write("                                    <p class=\"card-text\">");
 out.print(S.getFecha()); 
      out.write("</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <br>\r\n");
      out.write("                        <nav>\r\n");
      out.write("                            <div class=\"nav nav-tabs\" id=\"nav-tab\" role=\"tablist\">\r\n");
      out.write("                                <a class=\"nav-item nav-link active\" id=\"nav-home-tab\" data-toggle=\"tab\" href=\"#nav-home\" role=\"tab\" aria-controls=\"nav-home\" aria-selected=\"true\">\r\n");
      out.write("                                    <span class=\"badge  badge-info\"> 1 </span>\r\n");
      out.write("                                    Elige tu horario\r\n");
      out.write("                                </a>\r\n");
      out.write("                                <a class=\"nav-item nav-link\" id=\"nav-profile-tab\" data-toggle=\"tab\" href=\"#nav-profile\" role=\"tab\" aria-controls=\"nav-profile\" aria-selected=\"false\">\r\n");
      out.write("                                    <span class=\"badge  badge-info\"> 2 </span>\r\n");
      out.write("                                    Selecciona asientos \r\n");
      out.write("                                </a>\r\n");
      out.write("                                <a class=\"nav-item nav-link\" id=\"nav-contact-tab\" data-toggle=\"tab\" href=\"#nav-contact\" role=\"tab\" aria-controls=\"nav-contact\" aria-selected=\"false\">\r\n");
      out.write("                                    <span class=\"badge  badge-info\"> 3 </span>\r\n");
      out.write("                                    Finaliza tu compra \r\n");
      out.write("                                </a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                        <div class=\"tab-content\" id=\"nav-tabContent\">\r\n");
      out.write("                            <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\r\n");
      out.write("\r\n");
      out.write("                                ");
 for (int i=0 ; i< S.getPosiblesViajes().size() ; i++) {
      out.write("\r\n");
      out.write("                                <div class=\"card text-center\">\r\n");
      out.write("                                    <div class=\"card-header\">\r\n");
      out.write("                                        Opción ");
 out.print(i+1); 
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"card-body col-md-3\">\r\n");
      out.write("                                            <h5 class=\"card-title\"> Hora de Salida </h5>\r\n");
      out.write("                                            <p class=\"card-text\"> ");
 S.getPosiblesViajes().get(i).getHora_salida(); 
      out.write(" </p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"card-body col-md-3\">\r\n");
      out.write("                                            <h5 class=\"card-title\"> Hora de Llegada </h5>\r\n");
      out.write("                                            <p class=\"card-text\"> 8:30 AM </p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"card-body col-md-2\">\r\n");
      out.write("                                            <h5 class=\"card-title\"> Plazas </h5>\r\n");
      out.write("                                            <p class=\"card-text\"> 0/8 </p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"card-body col-md-2\">\r\n");
      out.write("                                            <h5 class=\"card-title\"> Precio </h5>\r\n");
      out.write("                                            <p class=\"card-text\"> 4€ </p>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"card-body col-md-2\">\r\n");
      out.write("                                            <a href=\"#\" class=\"btn btn-primary\"> Seleccionar </a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"card-footer text-muted\">\r\n");
      out.write("                                        Distantia 40Km\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                ");
 } 
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"nav-profile\" role=\"tabpanel\" aria-labelledby=\"nav-profile-tab\">\r\n");
      out.write("                                ...\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"nav-contact\" role=\"tabpanel\" aria-labelledby=\"nav-contact-tab\">\r\n");
      out.write("                                ...\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-md-3\">\r\n");
      out.write("                        DIV PARA CARD RESUMEN\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
