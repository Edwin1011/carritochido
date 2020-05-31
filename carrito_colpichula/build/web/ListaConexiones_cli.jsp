<%-- 
    Document   : ListaCli
    Created on : 20/05/2020, 12:00:12 AM
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
        <a href="index_cli.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones_cli.jsp">Lista de las conexiones</a>
        <a href="ListaMicro_cli.jsp">Lista de los microfonos</a>
        <a href="ListaControles_cli.jsp">Lista de los controladores</a>
        <br>
        <br>
        <br>
        <h1>Lista de todos las conexiones</h1>
        <div class="megaconteiner">
                <h1>Conexiones</h1>
                <table>
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Tipo de conexion
                        </td>
                        <td align="center">
                            URL de la imagen
                        </td>
                        <td align="center">
                            Stock
                        </td>
                        <td align="center">
                            Eliminar
                        </td>
                <%  
                    PConec pepe = new PConec();
                    List<PConec> lista = PConec.getAllConexiones();
                    PConec p = new PConec();
                    for (int i = 0; i < lista.size(); i++) {
                            p = (PConec)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= p.getId_conec()%>
                              
                            </td>
                            <% int tipo = p.getTipo();
                                String nombre2 = p.getNombreById(p.getTipo());
                                
                                int imagen = p.getImagen();
                                String url = pepe.getImagenById(p.getImagen());
                            %>
                            <td align="center"><%=nombre2%>

                            </td>
                            <td align="center">
                                <div class="imagen">                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%= p.getStock()%>
                            <td align="center">
                                <a href="EliminarConec?id=<%= p.getId_conec()%>" class="link">Eliminar el id <%= p.getId_conec()%></a>
                            </td>
                        <%
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
            </div>
    </body>
</html>

