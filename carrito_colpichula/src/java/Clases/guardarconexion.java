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
public class guardarconexion extends HttpServlet {

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
                int tipoc,alca;
                int precio,disponi,tipo;
                tipo = 2;
                String imagen, pretipo,prealcance;
                
                pretipo = request.getParameter("tipo");
                prealcance = request.getParameter("alcance");
                tipoc =Integer.parseInt(pretipo);
                alca = Integer.parseInt(prealcance);
                imagen = request.getParameter("img");
                precio = Integer.parseInt(request.getParameter("pre"));
                disponi =Integer.parseInt(request.getParameter("stock"));
                //Hacemos el objeto
                PConec e = new PConec();
                
                e.setTipo(tipoc);
                e.setAlcance(alca);
                e.setImagen(imagen);
                e.setPrecio(precio);
                e.setStock(disponi);
                
                
                
                int estado = PConec.Guardar(e);
                int posicion = 0;
                int penultimo = 0;
                
                
                List<PConec> lista = PConec.getAllConexiones();
                
                penultimo = lista.size()-1;
                PConec c = new PConec();
                for (int i = 0; i < lista.size(); i++) {
                    c = (PConec)lista.get(i);
                    
                    if (i == penultimo) {
                        int id_final = 0;
                        id_final = c.getId_conec();
                        Producto p = new Producto();
                
                        p.GuardarTodosP(tipo,id_final);
                        int prueba = e.getId_conec();
                        System.out.println(prueba);
                    }
                }
                
                if(estado > 0){
                    System.out.println("Se guardo");
                    response.sendRedirect("ListaConexiones.jsp");
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
    
    