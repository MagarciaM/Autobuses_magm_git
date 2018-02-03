package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.*;

public final class vista_005fselec_005fviaje_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Selección de viaje </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 Empresa objEmpresa = (Empresa) session.getAttribute("objEmpresa"); 
      out.write("\n");
      out.write("        <div class=\"contenido\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <h1> ");
 out.print(objEmpresa.getNombre());
      out.write(" </h1>\n");
      out.write("                </div>\n");
      out.write("                <nav>\n");
      out.write("                    <div class=\"nav nav-tabs\" id=\"nav-tab\" role=\"tablist\">\n");
      out.write("                        <a class=\"nav-item nav-link active\" id=\"nav-home-tab\" data-toggle=\"tab\" href=\"#nav-home\" role=\"tab\" aria-controls=\"nav-home\" aria-selected=\"true\">\n");
      out.write("                            <span class=\"badge  badge-info\"> 1 </span>\n");
      out.write("                            Elige tu horario\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"nav-item nav-link\" id=\"nav-profile-tab\" data-toggle=\"tab\" href=\"#nav-profile\" role=\"tab\" aria-controls=\"nav-profile\" aria-selected=\"false\">\n");
      out.write("                            <span class=\"badge  badge-info\"> 2 </span>\n");
      out.write("                            Selecciona asientos \n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"nav-item nav-link\" id=\"nav-contact-tab\" data-toggle=\"tab\" href=\"#nav-contact\" role=\"tab\" aria-controls=\"nav-contact\" aria-selected=\"false\">\n");
      out.write("                            <span class=\"badge  badge-info\"> 3 </span>\n");
      out.write("                            Finaliza tu compra \n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("                <div class=\"tab-content\" id=\"nav-tabContent\">\n");
      out.write("                    <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\n");
      out.write("                        ...\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"nav-profile\" role=\"tabpanel\" aria-labelledby=\"nav-profile-tab\">\n");
      out.write("                        ...\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tab-pane fade\" id=\"nav-contact\" role=\"tabpanel\" aria-labelledby=\"nav-contact-tab\">\n");
      out.write("                        ...\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
