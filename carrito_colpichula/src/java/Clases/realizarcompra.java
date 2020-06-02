/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edwin
 */
public class realizarcompra extends HttpServlet {

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
            try{
                System.out.println("HOLa1");
                HttpSession sesion = request.getSession();
                Vector<DetalleCompra> vectorDetalles = (Vector<DetalleCompra>)sesion.getAttribute("detalleCompra");
                DetalleCompra de = new DetalleCompra();                
                Cuerpo pepe = new Cuerpo();
                Micro pepe2 = new Micro();
                PConec pepe3 = new PConec();
                for (int i = 0; i < vectorDetalles.size(); i++) {
                    de = (DetalleCompra)vectorDetalles.get(i);
                    
                    String usuario =(String)sesion.getAttribute("usuario");
                    System.out.println(usuario);
                    DetalleCompra c = new DetalleCompra();
                    int id_cli = c.getUsuariobyNombre(usuario);
                    System.out.println(id_cli);
                    int tipo= de.getTipo_prod();
                    System.out.println("El tipo es: "+tipo);
                    
                    if (tipo==1) {
                        Cuerpo cu = new Cuerpo();
                        
                        cu = Cuerpo.gelProductoById(de.getId_producto());
                        
                        int pre = cu.getNombre();
                        float precio = pepe.getCprecioNById(pre);
                        
                        DetalleCompra d = new DetalleCompra();
                        d.setId_cliente(id_cli);
                        System.out.println(cu.getId_cuerpo()+"id del cuerpo");
                        System.out.println(precio+"precio");
                        d.setId_producto(cu.getId_cuerpo());
                        d.setTipo_prod(tipo);
                        d.setCantidad_compra(de.getCantidad_compra());
                        d.setSubtotal_compra(precio);
                        d.setTotal_compra(de.getSubtotal_compra());
                        
                        
                        
                        int estado = DetalleCompra.Guardar(d);
                        if(estado > 0){
                    System.out.println("Se guardo");
                    //Obtener parametros para el stock
                    int nombre = cu.getNombre();
                    int color = cu.getColor();
                    int stock = (de.getCantidad_compra())*-1;
                    
                    Cuerpo nc = new Cuerpo();
                    nc.setNombre(nombre);
                    nc.setColor(color);
                    nc.setStock(stock);
                    
                    int estado2 = Cuerpo.Guardar(nc);
                            if (estado2>0) {
                                System.out.println("Se guardo");
                            }else{
                                System.out.println("No se guardo alv todo");
                                response.sendRedirect("Error.jsp");
                            }
                }else{
                    //No se porque esto
                    System.out.println("ALv todo");
                    response.sendRedirect("Error.jsp");
                }
                    }else if(tipo == 2){
                        //microfono
                        Micro m = new Micro();
                        m= Micro.gelProductoById(de.getId_producto());
                        m.getId_microfono();
                        int pre = m.getTipo();
                        float precio = pepe2.getCPrecioTiById(pre);
                        
                        DetalleCompra d = new DetalleCompra();
                        d.setId_cliente(id_cli);
                        System.out.println(m.getId_microfono()+"id del cuerpo");
                        System.out.println(precio+"precio");
                        d.setId_producto(m.getId_microfono());
                        d.setTipo_prod(tipo);
                        d.setCantidad_compra(de.getCantidad_compra());
                        d.setSubtotal_compra(precio);
                        d.setTotal_compra(de.getSubtotal_compra());
                        
                        int estado = DetalleCompra.Guardar(d);
                        
                        if(estado > 0){
                    System.out.println("Se guardo");
                    int tipomic = m.getTipo();
                    int stock = (de.getCantidad_compra())*-1;
                    Micro mact = new Micro();
                    mact.setTipo(tipomic);
                    mact.setStock(stock);
                    int estado2 = Micro.Guardar(mact);
                            if (estado2>0) {
                                System.out.println("Se guardo");
                            }else{
                                System.out.println("No se guardo alv todo");
                                response.sendRedirect("Error.jsp");
                            }
                }else{
                    //No se porque esto
                    System.out.println("ALv todo");
                    response.sendRedirect("Error.jsp");
                }
                    }else if(tipo==3){
                        PConec pc = new PConec();
                        pc = PConec.gelProductoById(de.getId_producto());
                        pc.getId_conec();
                        int pre = pc.getTipo();
                        float precio = pepe3.getPrecioById(pre);
                        
                        DetalleCompra d = new DetalleCompra();
                        d.setId_cliente(id_cli);
                        d.setId_producto(pc.getId_conec());
                        d.setTipo_prod(tipo);
                        d.setCantidad_compra(de.getCantidad_compra());
                        d.setSubtotal_compra(precio);
                        d.setTotal_compra(de.getSubtotal_compra());
                        
                        int estado = DetalleCompra.Guardar(d);
                        
                        if(estado > 0){
                    System.out.println("Se guardo");
                    int tipomic = pc.getTipo();
                    int stock = (de.getCantidad_compra())*-1;
                    PConec pcon = new PConec();
                    pcon.setTipo(tipomic);
                    pcon.setStock(stock);
                    int estado2 = PConec.Guardar(pcon);
                            if (estado2>0) {
                                System.out.println("Se guardo");
                            }else{
                                System.out.println("No se guardo alv todo");
                                response.sendRedirect("Error.jsp");
                            }
                }else{
                    //No se porque esto
                    System.out.println("ALv todo");
                    response.sendRedirect("Error.jsp");
                }
                    }else if(tipo==4){
                        Contro co = new Contro();
                        co = Contro.gelProductoById(de.getId_producto());
                        co.getId_cont();
                        float precio = co.getPrecio();
                        
                        
                        DetalleCompra d = new DetalleCompra();
                        d.setId_cliente(id_cli);
                        d.setId_producto(co.getId_cont());
                        d.setTipo_prod(tipo);
                        d.setCantidad_compra(de.getCantidad_compra());
                        d.setSubtotal_compra(precio);
                        d.setTotal_compra(de.getSubtotal_compra());
                        
                        int estado = DetalleCompra.Guardar(d);
                        
                        if(estado > 0){
                    System.out.println("Se guardo");
                    int stock = (de.getCantidad_compra())*-1;
                    Contro con = new Contro();
                    con.setStock(stock);
                    int estado2 = Contro.Guardar(con);
                            if (estado2>0) {
                                System.out.println("Se guardo");
                            }else{
                                System.out.println("No se guardo alv todo");
                                response.sendRedirect("Error.jsp");
                            }
                }else{
                    //No se porque esto
                    System.out.println("ALv todo");
                    response.sendRedirect("Error.jsp");
                }
                    }
                }
                    sesion.setAttribute("detalleCompra",null);
                    response.sendRedirect("historial.jsp");
                    
            }catch(Exception e){
                e.printStackTrace();
                response.sendRedirect("Error.jsp");
            }
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet carrito</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet carrito at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("Error.jsp");
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
