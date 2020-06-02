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
public class EditarAdmi extends HttpServlet {

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
                String nombre,appat,apmat,fecha,direc,direcen,tel,cel,usuario,contraseña;
                
                nombre = request.getParameter("name");
                appat = request.getParameter("apepat");
                apmat = request.getParameter("apemat");
                fecha = request.getParameter("fecha");
                direc = request.getParameter("direc");
                tel = request.getParameter("tel");
                cel = request.getParameter("cel");
                
                //Hacemos el objeto
                Admin a = new Admin();
                a.setNom_admi(nombre);
                a.setAppat_admi(appat);;
                a.setApmat_admi(apmat);
                a.setFechaNaci_admi(fecha);
                a.setDir_admi(direc);
                a.setTel_admi(tel);
                a.setCel_admi(cel);;
                
                int estado = Admin.Editar(a);
                
                
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("Perfil_admin.jsp");
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
    
    