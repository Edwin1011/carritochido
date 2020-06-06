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
public class Acttel_cli extends HttpServlet {

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
           
            try{
                //Obtenemos los parametros
                String nombre;
                
                nombre = request.getParameter("nombre");
                int id =Integer.parseInt( request.getParameter("id"));
                
                if(nombre.equals("drop database") ){
                    response.sendRedirect("Error.jsp");
                    System.out.println("Error dentro del if de nulo");
                }else if(nombre.equals("DROP DATABASE") ){
                    response.sendRedirect("Error.jsp");
                    System.out.println("Error dentro del if de nulo");
                }else{
                    System.out.println("Bien");
                }
                
                
                //Hacemos el objeto
                Cliente c = new Cliente();
                c.setTel(nombre);
                c.setId(id);
                
                int estado = Cliente.EditarTelefono(c);
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("Perfil_cli.jsp");
                }else{
                    //No se porque esto
                    System.out.println("Me quiero morir");
                    response.sendRedirect("Error.jsp");
                }
            }catch (Exception e){
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                e.printStackTrace();
                
            }
        }
    }
    
    
}
    
    