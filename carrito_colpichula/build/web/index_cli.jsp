<%-- 
    Document   : index_cli
    Created on : 31/05/2020, 03:17:13 PM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String usuario = "";
            HttpSession sesionOK = request.getSession();
            if(sesionOK.getAttribute("usuario") == null){
                
            
        %>
        <jsp:forward page="index.jsp">
            <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
        <%
            }else{
                usuario = (String)sesionOK.getAttribute("usuario");
            }
        %>
        <h1>Index del cliente <%= usuario%></h1>
        <a href="CerrarSesion">Cerrar Sesion</a>
        <a href="Perfil_cli.jsp">Ver mi perfil</a>
        <a href="historial.jsp">Ver mi historial</a>
        <h1>Lista de todos los produtos</h1>
        <br>
        <h1>Cuerpos:</h1>        
                <%
                    Cuerpo pepe = new Cuerpo();
                    
                    List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                    Cuerpo c = new Cuerpo();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cuerpo)lista.get(i); 
                            int nombre = c.getNombre();
                            String nombre2 = pepe.getNombreCById(nombre);
                            String descripcion = pepe.getCdescNCById(c.getNombre());
                            int color = c.getColor();
                            String color2 = pepe.getColorById(color);
                                
                            int imagen = c.getImagen();
                            String url = pepe.getImagenById(imagen);
                            int pre = c.getNombre();
                            float precio2 = pepe.getCprecioNById(pre);

                            
                            int id_prod= c.getId_cuerpo();
                            int stock = c.getStock();
                %>                           
                <form action="detallcuerpo.jsp?id_prod=<%= id_prod%>&nombre=<%= nombre2%>&desc=<%= descripcion%>&color=<%= color2%>&url=<%= url%>&precio=<%= precio2%>&stock=<%= stock%>" method="post">
                                <div class="Contenedor-cuerpos">
                                    <div>Audifonos tipo: <%= nombre2%> de color: <%= color2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                    <div><input type="text" readonly="readonly" value="Clic en la imagenp para ir a detalles"></div>
                                </div>
                            </form>
                        <%
                            }
                        %>
        <h1>Microfonos:</h1>
                <%
                    Micro pepe2 = new Micro();
                    List<Micro> lista2 = Micro.getAllMicros();
                    Micro m = new Micro();
                    for (int i = 0; i < lista2.size(); i++) {
                        m = (Micro)lista2.get(i);
                                int nombre = m.getTipo();
                                String nombre2 = pepe2.getTipoById(nombre);
                            
                                int imagen = m.getImagen();
                                String url = pepe2.getImagenById(imagen);
                                String descripcion = pepe2.getCdescTipoById(m.getTipo());
                                int id_prod= m.getId_microfono();
                                int pre = m.getTipo();
                                float precio = pepe2.getCPrecioTiById(pre);
                                int stock = m.getStock();
                            %>
                            <form action="detallMicro.jsp?id_prod=<%= id_prod%>&nombre=<%= nombre2%>&desc=<%= descripcion%>&url=<%= url%>&precio=<%= precio%>&stock=<%= stock%>" method="post">
                                <div class="Contenedor-micros">
                                    <div>Microfonos tipo: <%= nombre2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
        <h1>Conexiones:</h1>
         <%  
                    PConec pepe3 = new PConec();
                    List<PConec> lista3 = PConec.getAllConexiones();
                    PConec p = new PConec();
                    for (int i = 0; i < lista3.size(); i++) {
                            p = (PConec)lista3.get(i);
                                int tipo = p.getTipo();
                                String nombre2 = p.getNombreById(tipo);
                                
                                int imagen = p.getImagen();
                                String url = pepe3.getImagenById(imagen);
                                int id_prod = p.getId_conec();
                                int pre = p.getTipo();
                                float precio = pepe3.getPrecioById(pre);
                                int stock = p.getStock();
                            %>
                            <form action="detallConec.jsp?id_prod=<%= id_prod%>&nombre=<%= nombre2%>&url=<%= url%>&precio=<%= precio%>&stock=<%= stock%>" method="post">
                                <div class="Contenedor-conec">
                                    <div>Conexiones tipo: <%= nombre2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
    <h1>Controlador:</h1>
    <%
                    List<Contro> lista5 = Contro.getAllContros();
                    Contro c2 = new Contro();
                    for (int i = 0; i < lista5.size(); i++) {
                            c2 = (Contro)lista5.get(i);
                            String url = c2.getImagen();
                            
                            int id_prod = c2.getId_cont();
                            String desc = c2.getDesc();
                            float precio = c2.getPrecio();
                            int stock = c2.getStock();
                %>
                         <form action="detallContro.jsp?id_prod=<%= id_prod%>&desc=<%= desc%>&url=<%= url%>&precio=<%= precio%>&stock=<%= stock%>" method="post">
                                <div class="Contenedor-controlador">
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
    </body>
</html>
