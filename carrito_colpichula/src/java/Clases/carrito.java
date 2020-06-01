/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Clases.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edwin
 */
public class carrito extends HttpServlet {

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
            try{
                System.out.println("HOLa1");
                HttpSession sesion = request.getSession();
                Vector<DetalleCompra> vectorDetalles = null;
                
                if (sesion.getAttribute("detalleCompra") != null) {
                    //significa que ya tiene un detalle de compra(carrito)
                    vectorDetalles = (Vector<DetalleCompra>)sesion.getAttribute("detalleCompra");
                    System.out.println("Hola2");
                }else{
                    //SI no existe se crea una nueva
                    vectorDetalles = new Vector<DetalleCompra>();
                    System.out.println("Hola3");
                }
                
                //parametros:
                int clasificador = Integer.parseInt(request.getParameter("tipo"));
                System.out.println("El holaaaa"+clasificador);
                int id_prod = Integer.parseInt(request.getParameter("id_prod"));
                float precio = Float.parseFloat(request.getParameter("precio"));
                int stock = Integer.parseInt(request.getParameter("stock"));
                int cantidad = Integer.parseInt(request.getParameter("cant"));
                
                System.out.println("Hola4");
                if (stock<=cantidad) {
                    System.out.println("Hola5");
                    response.sendRedirect("Error.jsp");
                }else{
                    System.out.println("Hola6");
                    float subtotal = cantidad*precio;
                    
                    DetalleCompra de = new DetalleCompra();
                    
                    System.out.println("Hola7");
                    de.setItem(vectorDetalles.size()+1);
                    de.setCantidad_compra(cantidad);
                    de.setId_producto(id_prod);
                    de.setSubtotal_compra(subtotal);
                    de.setTipo_prod(clasificador);
                    
                    System.out.println("Hola8");
                    vectorDetalles.add(de);
                    System.out.println("Hola9");
                    sesion.setAttribute("detalleCompra", vectorDetalles);
                    System.out.println("10");
                    response.sendRedirect("VerCarrito.jsp");
                    System.out.println("11");
                }
            }catch(Exception e){
                e.printStackTrace();
                response.sendRedirect("Error.jsp");
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet carrito</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet carrito at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
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
