package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class visa_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Home </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"contenido\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h1> Nombre </h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\"> <!-- fixed-top-->\n");
      out.write("                    <nav class=\"col-md-12 navbar navbar-expand-lg navbar-dark bg-info menu\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                            <img src=\"./img/logo.svg\" width=\"30\" height=\"30\" class=\"d-inline-block align-top\" alt=\"\">\n");
      out.write("                            Logo\n");
      out.write("                        </a>\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                            <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                                <li class=\"nav-item active\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"#\">Conócenos</a>\n");
      out.write("                                </li>\n");
      out.write("\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" href=\"#\"> Contacto </a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <ul class=\"navbar-nav justify-content-end\">\n");
      out.write("                                <li li class=\"nav-item dropdown\"> \n");
      out.write("                                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                        Acceder / Registrarse\n");
      out.write("                                    </a>\n");
      out.write("                                    <div class=\"dropdown-menu\">\n");
      out.write("                                        <form class=\"px-4 py-3\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"nif\"> Nif </label>\n");
      out.write("                                                <input id=\"nif\" type=\"text\" class=\"form-control\" placeholder=\"12345678A\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"pass\"> Contraseña </label>\n");
      out.write("                                                <input type=\"password\" class=\"form-control\" id=\"pass\" placeholder=\"********\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-info col-md-8\"> Acceder </button>\n");
      out.write("                                        </form>\n");
      out.write("                                        <div class=\"dropdown-divider\"></div>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">¿No tienes cuenta? Registrate</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                            <form class=\"form-inline my-2 my-lg-0\">\n");
      out.write("                                <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Buscar\" aria-label=\"Search\">\n");
      out.write("                                <button class=\"btn btn-outline-light my-2 my-sm-0\" type=\"submit\">Buscar</button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"row jumbotron divHome\">\n");
      out.write("                    <div class=\"col-md-5\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <h1 class=\"display-4\">Planifica tu viaje</h1>\n");
      out.write("                            <p class=\"lead\"> Disfrute de nuestro servicio de Autobuses </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card offset-md-2 col-md-4 form-control formHome\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <input class=\"form-control form-control-lg\" list=\"origen\" placeholder=\"Escribe tu origen\">\n");
      out.write("                            <datalist id=\"origen\">\n");
      out.write("                                <option value=\"Escribe tu origen\">\n");
      out.write("                            </datalist>                          \n");
      out.write("                            <br>  \n");
      out.write("\n");
      out.write("                            <input class=\"form-control form-control-lg\" list=\"destino\" placeholder=\"Escribe tu destino\">\n");
      out.write("                            <datalist id=\"destino\">\n");
      out.write("                                <option value=\"\">\n");
      out.write("                            </datalist>  \n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                            <label for=\"fecha\"> Seleciona fecha </label>\n");
      out.write("                            <input class=\"form-control\" type=\"date\" id=\"fecha\">\n");
      out.write("                            <br>\n");
      out.write("\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-info\"> Comprobar Disponibilidad </button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row jumbotron   \">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                            <h2 class=\"display-4\"> Conócenos </h2>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
