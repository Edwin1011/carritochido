<%-- 
    Document   : Perfil_admin
    Created on : 2/06/2020, 06:16:36 AM
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
        <a href="index_cli.jsp">Lista de los productos</a>
        <a href="CerrarSesion">Cerrar Sesion</a>
        <table>
                <%
                    DetalleCompra de = new DetalleCompra();
                    Cliente c = new Cliente();
                    int id_cli = de.getUsuariobyNombre(usuario);
                    
                    c = Cliente.getClienteById(id_cli);
                    
                %>
                            <tr align="center">
                                <td>
                                    Id <%= id_cli%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre: <%= c.getNombre()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarNombre.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Paterno: <%= c.getAppat()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarApepat.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Materno: <%= c.getApmat()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarApemat.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Fecha de Nacimiento: <%= c.getFecha()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarFecha.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Direccion: <%= c.getDirec()%>
                                </td>
                               <td>
                                    <form method="post" action="EditarDirec.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Direccion de entrega: <%= c.getDirecen()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarDirecEn.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de telefono: <%= c.getTel()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarTel.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de celular: <%= c.getCel()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarCel.jsp">
                                        <input type="submit" value="Editar">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre de usuario: <%= c.getUsuario()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                   Contraseña: <%= c.getContraseña() %>
                                </td>
                            </tr>
                        <%
                            
                        %>
                                       
                    </tbody>
                </table>
    </body>
</html>
