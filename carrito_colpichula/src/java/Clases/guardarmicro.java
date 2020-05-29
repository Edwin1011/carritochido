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
public class guardarmicro extends HttpServlet {

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
                int tipo,tipo_p;
                int precio,disponi;
                String imagen,pretipo;
                tipo_p = 4;
                pretipo = request.getParameter("tipo");
                
                tipo =Integer.parseInt(pretipo);
                imagen = request.getParameter("img");
                precio = Integer.parseInt(request.getParameter("pre"));
                disponi =Integer.parseInt(request.getParameter("stock"));
                //Hacemos el objeto
                Micro e = new Micro();
                e.setTipo(tipo);
                e.setImagen(imagen);
                e.setPrecio(precio);
                e.setStock(disponi);
                
                
                
                int estado = Micro.Guardar(e);
                
                
                int posicion = 0;
                int penultimo = 0;
                
                
                List<Micro> lista = Micro.getAllMicros();
                
                penultimo = lista.size()-1;
                Micro m = new Micro();
                for (int i = 0; i < lista.size(); i++) {
                    m = (Micro)lista.get(i);
                    
                    if (i == penultimo) {
                        int id_final = 0;
                        id_final = m.getId_microfono();
                        Producto p = new Producto();
                
                        p.GuardarTodosP(tipo_p,id_final);
                        int prueba = e.getId_microfono();
                        System.out.println(prueba);
                    }
                }
                
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
    
    