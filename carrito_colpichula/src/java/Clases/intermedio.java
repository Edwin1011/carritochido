package Clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author y700
 */
public class intermedio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
            String select;
            select = request.getParameter("tipo_prod_prueba");
            System.out.println(select);
                
            if (select.equals("cuerpo")) {
                response.sendRedirect("InsertarPCuerpo.jsp");
                System.out.println("funciona");
            }else if (select.equals("conexion")) {
                response.sendRedirect("InsertarPConec.jsp");
                System.out.println("no funciona");
            }else if (select.equals("microfono")){
                response.sendRedirect("InsertarPMicro.jsp");
            }else if (select.equals("controlador")) {
                response.sendRedirect("InsertarPContro.jsp");
            }else{
                response.sendRedirect("Error.jsp");
            }
        }
    }
    
    
}
    