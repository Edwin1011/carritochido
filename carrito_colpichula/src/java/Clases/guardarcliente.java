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
public class guardarcliente extends HttpServlet {

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
                appat = request.getParameter("apa");
                apmat = request.getParameter("ama");
                fecha = request.getParameter("f_nacimiento");
                direc = request.getParameter("direc");
                direcen =request.getParameter("direc_entrega");
                tel = request.getParameter("tel");
                cel = request.getParameter("cel");
                usuario = request.getParameter("usu");
                contraseña = request.getParameter("contra");
                
                if(nombre.equals("drop database") || appat.equals("drop database") || apmat.equals("drop database")|| fecha.equals("drop database")|| direc.equals("drop database")|| direcen.equals("drop database")|| tel.equals("drop database")|| cel.equals("drop database")|| usuario.equals("drop database")|| contraseña.equals("drop database")){
                    response.sendRedirect("Error.jsp");
                    System.out.println("Error dentro del if de nulo");
                }else if(nombre.equals("DROP DATABASE") || appat.equals("DROP DATABASE") || apmat.equals("DROP DATABASE")|| fecha.equals("DROP DATABASE")|| direc.equals("DROP DATABASE")|| direcen.equals("DROP DATABASE")|| tel.equals("DROP DATABASE")|| cel.equals("DROP DATABASE")|| usuario.equals("DROP DATABASE")|| contraseña.equals("DROP DATABASE")){
                    response.sendRedirect("Error.jsp");
                    System.out.println("Error dentro del if de nulo");
                }else{
                    System.out.println("Bien");
                }
                
                //Hacemos el objeto
                Cliente e = new Cliente();
                e.setNombre(nombre);
                e.setAppat(appat);
                e.setApmat(apmat);
                e.setFecha(fecha);
                e.setDirec(direc);
                e.setDirecen(direcen);
                e.setTel(tel);
                e.setCel(cel);
                e.setUsuario(usuario);
                e.setContraseña(contraseña);
                
                int estado = Cliente.Guardar(e);
                
                
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("Login.jsp");
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
    
    