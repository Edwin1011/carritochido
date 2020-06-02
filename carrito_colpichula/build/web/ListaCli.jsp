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
        <a href="index_admin.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones.jsp">Lista de las conexiones</a>
        <a href="ListaMicro.jsp">Lista de los microfonos</a>
        <a href="ListaControles.jsp">Lista de los controladores</a>
        <a href="ListaCli.jsp">Ver todos los clientes</a>
        <a href="graficas.jsp">Ver las graficas de ventas-fechas</a>
        <a href="CerrarSesion">Cerrar Sesion</a>
        <a href="Perfil_admin.jsp">Ver mi perfil</a>
        <h1>Lista de todos los clientes</h1>
        <div class="megaconteiner">
                <h1>Usuarios</h1>
                <table>
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Nombre
                        </td>
                        <td align="center">
                            Apellido Paterno
                        </td>
                        <td align="center">
                            Apellido Materno
                        </td>
                        <td align="center">
                            Fecha de Nacimiento
                        </td>
                        <td align="center">
                            Direccion
                        </td>
                        <td align="center">
                            Direccion de entrega
                        </td>
                        <td align="center">
                            Telefono
                        </td>
                        <td align="center">
                            Celular
                        </td>
                        <td align="center">
                            Uusario
                        </td>
                        <td align="center">
                            Contraseña
                        </td>
                        <td align="center">
                            Eliminar
                        </td>
                        <td align="center">
                            Ir al historial
                        </td>
                <%
                    List<Cliente> lista = Cliente.getAllClientes();
                    Cliente c = new Cliente();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cliente)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= c.getId()%>
                              
                            </td>
                            <td align="center"><%= c.getNombre()%>

                            </td>
                            <td align="center"><%= c.getAppat()%>

                            </td>
                            <td align="center"><%= c.getApmat()%>

                            </td>
                            <td align="center"><%= c.getFecha()%>

                            </td>
                            <td align="center"><%= c.getDirec() %>

                            </td>
                            <td align="center"><%= c.getDirecen() %>

                            </td>
                            <td align="center"><%= c.getTel() %>

                            </td>
                            <td align="center"><%= c.getCel() %>

                            </td>
                            <td align="center"><%= c.getUsuario()%>

                            </td>
                            <td align="center"><%= c.getContraseña() %>

                            </td>
                            <td align="center">
                                <a href="EliminarCliente?id=<%= c.getId()%>" class="link">Eliminar el id <%= c.getId()%></a>
                            </td>
                            <td align="center">
                                <a href="HistorialCli.jsp?id=<%= c.getId()%>" class="link">Historial del id <%= c.getId()%></a>
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
