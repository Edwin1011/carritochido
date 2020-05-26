
import Clases.Cliente;
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
public class epepacli extends HttpServlet {

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
                    response.sendRedirect("funciona.jsp");
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
    