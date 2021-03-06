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
        <h1>Lista de todos los controles</h1>
        <div class="megaconteiner">
                <h1>Conexiones</h1>
                <table>
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            URL de la imagen
                        </td>
                        <td align="center">
                            Precio
                        </td>
                        <td align="center">
                            Stock
                        </td>
                        <td align="center">
                            Eliminar
                        </td>
                <%
                    List<Contro> lista = Contro.getAllContros();
                    Contro c = new Contro();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Contro)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= c.getId_cont()%>
                              
                            </td>
                            <td align="center"><%= c.getDesc()%>

                            </td>
                            <td align="center"><%= c.getImagen() %>

                            </td>
                            <td align="center"><%= c.getPrecio()%>

                            </td>
                            <td align="center"><%= c.getStock()%>
                            <td align="center">
                                <a href="EliminarContro?id=<%= c.getId_cont()%>" class="link">Eliminar el id <%= c.getId_cont()%></a>
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

