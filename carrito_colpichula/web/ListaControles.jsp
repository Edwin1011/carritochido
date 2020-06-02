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
        <h1>Index del admin <%= usuario%></h1>
        <a href="index_admin.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones.jsp">Lista de las conexiones</a>
        <a href="ListaMicro.jsp">Lista de los microfonos</a>
        <a href="ListaControles.jsp">Lista de los controladores</a>
        <a href="ListaCli.jsp">Ver todos los clientes</a>
        <a href="graficas.jsp">Ver las graficas de ventas-fechas</a>
        <a href="CerrarSesion">Cerrar Sesion</a>
        <a href="Perfil_admin.jsp">Ver mi perfil</a>
        <br>
        <br>
        <h1>Lista de todos los controladores</h1>
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
                            <td align="center">
                                <img src="<%= c.getImagen() %>" width="50px" height="50px"> 

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
                        <form method="post" action="Squitarstockcontro" class="formulario">
            <h1>Quitar Stock</h1>
            <div class="contenedor">
                
                <div class="input-contenedor">
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Quitar" class="button">
                <br>
                <br>
                
            </div>
        </form>
                         <form method="post" action="guardarcontro" class="formulario">
            <h1>Agregar Stock</h1>
            <div class="contenedor">
                
                <div class="input-contenedor">
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Agregar" class="button">
                <br>
                <br>
                
            </div>
        </form>
            </div>
    </body>
</html>

