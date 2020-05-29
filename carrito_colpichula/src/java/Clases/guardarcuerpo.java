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
public class guardarcuerpo extends HttpServlet {

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
                int nombre,color;
                int precio,disponi,tipo;
                tipo=1;
                String imagen,prenombre,precolor;
                
                prenombre = request.getParameter("name");
                precolor = request.getParameter("col");
                
                nombre =Integer.parseInt(prenombre);
                color =Integer.parseInt(precolor);
                imagen = request.getParameter("img");
                precio = Integer.parseInt(request.getParameter("pre"));
                disponi =Integer.parseInt(request.getParameter("stock"));
                //Hacemos el objeto
                Cuerpo e = new Cuerpo();
                e.setNombre(nombre);
                e.setColor(color);
                e.setImagen(imagen);
                e.setPrecio(precio);
                e.setStock(disponi);
                
                
                
                int estado = Cuerpo.Guardar(e);
                int posicion = 0;
                int penultimo = 0;
                
                
                List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                
                penultimo = lista.size()-1;
                Cuerpo c = new Cuerpo();
                for (int i = 0; i < lista.size(); i++) {
                    c = (Cuerpo)lista.get(i);
                    
                    if (i == penultimo) {
                        int id_final = 0;
                        id_final = c.getId_cuerpo();
                        Producto p = new Producto();
                
                        p.GuardarTodosP(tipo,id_final);
                        int prueba = e.getId_cuerpo();
                        System.out.println(prueba);
                    }
                }
                
                
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
    
    