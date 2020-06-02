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
        <a href="index_admin.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones.jsp">Lista de las conexiones</a>
        <a href="ListaMicro.jsp">Lista de los microfonos</a>
        <a href="ListaControles.jsp">Lista de los controladores</a>
        <a href="ListaCli.jsp">Ver todos los clientes</a>
        <a href="graficas.jsp">Ver las graficas de ventas-fechas</a>
        <a href="CerrarSesion">Cerrar Sesion</a>
        <a href="Perfil_admin.jsp">Ver mi perfil</a>
        
        <%
        
        %>
        <table>
                <%
                    List<Admin> lista = Admin.getAllAdmin();
                    Admin a = new Admin();
                    for (int i = 0; i < lista.size(); i++) {
                        a = (Admin)lista.get(i);
                %>
                            <tr align="center">
                                <td>
                                    Tipo: <%= a.getId()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre: <%= a.getNom_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Paterno: <%= a.getAppat_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Materno: <%= a.getApmat_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Fecha de Nacimiento: <%= a.getFechaNaci_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Direccion: <%= a.getDir_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de telefono: <%= a.getTel_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de celular: <%= a.getCel_admi()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre de usuario: <%= a.getUsuario()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                   Contraseña: <%= a.getContraseña() %>
                                </td>
                            </tr>
                        <%
                            }
                        %>
                                       
                    </tbody>
                </table>
                        <a href="editarAdmin.jsp">Editar datos menos el usuario y contraseña</a>
    </body>
</html>
