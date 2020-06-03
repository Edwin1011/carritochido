package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import Clases.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Compra audio-partes en HAUD</title>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilo.css\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <header>\r\n");
      out.write("            <input type=\"checkbox\" id=\"btn-menu\">\r\n");
      out.write("                <label for=\"btn-menu\"></label>\r\n");
      out.write("            <div class=\"logo-cont\">\r\n");
      out.write("                <div class=\"logo\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        <nav class=\"menu\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li><a href=\"Login.jsp\">Iniciar sesion</a></li>\r\n");
      out.write("                </ul>   \r\n");
      out.write("            \r\n");
      out.write("            </nav>\r\n");
      out.write("        </header>\r\n");
      out.write("        \r\n");
      out.write("        <h1>Lista de todos los produtos</h1>\r\n");
      out.write("        <br>\r\n");
      out.write("            <div class=\"generalP\">\r\n");
      out.write("                \r\n");
      out.write("            ");

                    Micro pepe2 = new Micro();
                    List<Micro> lista2 = Micro.getAllMicros();
                    Micro m = new Micro();
                    for (int i = 0; i < lista2.size(); i++) {
                        m = (Micro)lista2.get(i);
                                int nombre = m.getTipo();
                                String nombre2 = pepe2.getTipoById(nombre);
                            
                                int imagen = m.getImagen();
                                String url = pepe2.getImagenById(imagen);
                            
      out.write("\r\n");
      out.write("                            <form action=\"Login.jsp\">\r\n");
      out.write("                                <div class=\"ContenedorG\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"imagen\">                                    \r\n");
      out.write("                                        <a><input type=\"image\" src=\"");
      out.print( url);
      out.write("\" alt=\"imagen\" width=\"200px\" height=\"200px\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <input type=\"submit\" class=\"button-i\" value=\"Ver producto\">\r\n");
      out.write("                                        <div>Microfonos tipo: ");
      out.print( nombre2);
      out.write("</div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("         ");
  
                    PConec pepe3 = new PConec();
                    List<PConec> lista3 = PConec.getAllConexiones();
                    PConec p = new PConec();
                    for (int i = 0; i < lista3.size(); i++) {
                            p = (PConec)lista3.get(i);
                                int tipo = p.getTipo();
                                String nombre2 = p.getNombreById(tipo);
                                
                                int imagen = p.getImagen();
                                String url = pepe3.getImagenById(imagen);
                            
      out.write("\r\n");
      out.write("                            <form action=\"Login.jsp\">\r\n");
      out.write("                                <div class=\"ContenedorG\">\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"imagen\">                                    \r\n");
      out.write("                                        <a><input type=\"image\" src=\"");
      out.print( url);
      out.write("\" alt=\"imagen\" width=\"200px\" height=\"200px\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <input type=\"submit\" class=\"button-i\" value=\"Ver producto\">\r\n");
      out.write("                                        <div>Conexiones tipo: ");
      out.print( nombre2);
      out.write("</div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("    ");

                    List<Contro> lista5 = Contro.getAllContros();
                    Contro c2 = new Contro();
                    for (int i = 0; i < lista5.size(); i++) {
                            c2 = (Contro)lista5.get(i);
                            String url = c2.getImagen();
                
      out.write("\r\n");
      out.write("                         <form action=\"Login.jsp\">\r\n");
      out.write("                                <div class=\"ContenedorG\">\r\n");
      out.write("                                    <div class=\"imagen\">                                    \r\n");
      out.write("                                        <a><input type=\"image\" src=\"");
      out.print( url);
      out.write("\" alt=\"imagen\" width=\"200px\" height=\"200px\"></a>\r\n");
      out.write("                                        \r\n");
      out.write("                                    </div>\r\n");
      out.write("                                        <input type=\"submit\" class=\"button-i\" value=\"Ver producto\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                        <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("            ");

                    Cuerpo pepe = new Cuerpo();
                    
                    List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                    Cuerpo c = new Cuerpo();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cuerpo)lista.get(i); 
                            int nombre = c.getNombre();
                            String nombre2 = pepe.getNombreCById(nombre);
                         
                            int color = c.getColor();
                            String color2 = pepe.getColorById(color);
                                
                            int imagen = c.getImagen();
                            String url = pepe.getImagenById(imagen);
                
      out.write("                           \r\n");
      out.write("                            <form action=\"Login.jsp\">\r\n");
      out.write("                                <div class=\"ContenedorG\" >\r\n");
      out.write("                                    <div class=\"imagen\">                                    \r\n");
      out.write("                                        <a><input type=\"image\" src=\"");
      out.print( url);
      out.write("\" alt=\"imagen\" width=\"200px\" height=\"200px\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div>Cuerpo tipo ");
      out.print( nombre2);
      out.write(" de color ");
      out.print( color2);
      out.write("</div>\r\n");
      out.write("                                    <input type=\"submit\" class=\"button-i\" value=\"Ver producto\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                                <br>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("            \r\n");
      out.write("                </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
