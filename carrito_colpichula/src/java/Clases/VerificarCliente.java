/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edwin
 */
public class VerificarCliente extends HttpServlet {

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
            
            //Codigo para la validacion de un usuario:
            try{
                String user,pass;
                String usu_admin = "";
                String admin = "admin";
                
                user = request.getParameter("usu");
                pass = request.getParameter("contra");
                //Hacemos una instancia de la clase Cliente
                Admin a = new Admin();
                if (admin.equals(user)) {
                    response.sendRedirect("index_admin.jsp");
                    HttpSession sesion = request.getSession(true);
                    sesion.setAttribute("usuario",a);
                    
                    HttpSession sesionOK = request.getSession();
                    sesionOK.setAttribute("usuario",user);
                }else{
                Cliente c = new Cliente();
                c= Cliente.verificarCliente(user, pass);
                
                
                
                List<Admin> lista = Admin.getAllAdmin();
                Admin ad = new Admin();
                
                for (int i = 0; i < lista.size(); i++) {
                    ad = (Admin)lista.get(i);
                    usu_admin = ad.getUsuario();
                }
                //Si el usuario es diferente a null(existe) se crea la sesion
                System.out.println("Usuario del admin"+usu_admin);
                System.out.println("Usuario del cliente"+c.getUsuario());
                if (c != null) {
                    HttpSession sesion = request.getSession(true);
                    sesion.setAttribute("usuario",c);
                    
                    HttpSession sesionOK = request.getSession();
                    sesionOK.setAttribute("usuario",user);
                    
                    
                    if (!usu_admin.equals(c.getUsuario())) {
                        //Es un cliente
                        response.sendRedirect("index_cli.jsp");
                    }else{
                        //ES un admin ya que tiene otro valor
                        response.sendRedirect("ListaCuerpos.jsp");
                    }
                }else{
                    //El usuario no existe en la BD o la contra es incorrecta
                    response.sendRedirect("Error.jsp");
                    System.out.println("Error dentro del if de nulo");
                }
                }
            }catch(Exception e){
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                System.out.println("HOLa, error general");
                response.sendRedirect("Error.jsp");
            }
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet VerificarCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet VerificarCliente at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
