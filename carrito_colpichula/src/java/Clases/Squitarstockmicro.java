package Clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
 * @author y700
 */
public class Squitarstockmicro extends HttpServlet {

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
                int tipo;
                int disponi_p;
                int imagen;
                String pretipo;
                
                pretipo = request.getParameter("tipo");
                
                tipo =Integer.parseInt(pretipo);
                disponi_p =Integer.parseInt(request.getParameter("stock"));
                int disponi = disponi_p*-1;
                //Hacemos el objeto
                
                if(tipo==1){
                    imagen=1;
                }else{
                    imagen = 2;
                }
                
                Micro e = new Micro();
                e.setTipo(tipo);
                e.setStock(disponi); 
                e.setImagen(imagen);
                
                int estado = Micro.Guardar(e);
                
                
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("ListaMicro.jsp");
                }else{
                    //No se porque esto
                    System.out.println("chale");
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