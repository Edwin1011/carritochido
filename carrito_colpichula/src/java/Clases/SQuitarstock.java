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
public class SQuitarstock extends HttpServlet {

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
                int nombre,color,imagen,disponi_p;
                String prenombre,precolor;
                imagen =0 ;
                
                prenombre = request.getParameter("name");
                precolor = request.getParameter("col");
                
                nombre =Integer.parseInt(prenombre);
                color =Integer.parseInt(precolor);
                disponi_p =Integer.parseInt(request.getParameter("stock"));
                int disponi = disponi_p*-1;
                //Hacemos el objeto
                
                if (nombre == 1 & color == 1) {
                    imagen= 1;
                }else if( nombre ==1 & color ==2){
                    imagen= 5;
                }else if(nombre == 1 & color == 3){
                    imagen= 4;
                }else if(nombre == 1 & color == 4){
                    imagen= 3;
                }else if(nombre == 1 & color ==5){
                    imagen = 2;
                }else if(nombre == 1 & color == 6){
                    imagen= 8;
                }else if(nombre == 1 & color == 7){
                    imagen= 7;
                }else if(nombre == 1 & color == 8){
                    imagen= 6;
                }else if(nombre == 1 & color == 9){
                    imagen= 10;
                }else if(nombre == 1 & color == 10){
                    imagen= 9;
                }else if(nombre == 2 & color == 1){
                    imagen= 14;
                }else if(nombre == 2 & color == 2){
                    imagen= 15;
                }else if(nombre == 2 & color == 3){
                    imagen= 12;
                }else if(nombre == 2 & color == 4){
                    imagen= 13;
                }else if(nombre == 2 & color == 5){
                    imagen= 16;
                }else if(nombre == 2 & color == 6){
                    imagen= 17;
                }else if(nombre == 2 & color == 7){
                    imagen= 18;
                }else if(nombre == 2 & color == 8){
                    imagen= 11;
                }else if(nombre == 2 & color == 9){
                    imagen= 20;
                }else if(nombre == 2 & color == 10){
                    imagen= 23;
                }else if(nombre == 3 & color == 1){
                    imagen= 22;
                }else if(nombre == 3 & color == 2){
                    imagen= 21;
                }else if(nombre == 3 & color == 3){
                    imagen= 19;
                }else if(nombre == 3 & color == 4){
                    imagen= 24;
                }else if(nombre == 3 & color == 5){
                    imagen= 26;
                }else if(nombre == 3 & color == 6){
                    imagen= 27;
                }else if(nombre == 3 & color == 7){
                    imagen= 28;
                }else if(nombre == 3 & color == 8){
                    imagen= 29;
                }else if(nombre == 3 & color == 9){
                    imagen= 25;
                }else{
                    imagen = 30;
                }
                
                
                Cuerpo e = new Cuerpo();
                e.setNombre(nombre);
                e.setColor(color);
                e.setStock(disponi);
                
                
                System.out.println("no llega a estado");
                int estado = Cuerpo.Guardar(e);
                
                System.out.println("Mandamos el estado");
                
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("ListaCuerpos.jsp");
                }else{
                    //No se porque esto
                    System.out.println("ALv todo");
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
    
    