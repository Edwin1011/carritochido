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
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>Lista de clientes</title>
    </head>
    <body>
        <header>
            <input type="checkbox" id="btn-menu">
                <label for="btn-menu"></label>
            <div class="logo-cont">
                <div class="logo">
                </div>
            </div>
        <nav class="menu">
                <ul>
                    
                    <li><a href="graficas.jsp">Ver las ventas</a></li>
                    <li><a href="index_admin.jsp">Ver productos</a></li>
                    <li><a href="Perfil_admin.jsp">Ver mi perfil</a></li>
                </ul>   
            
            </nav>
        </header>
        <h1>Lista de todos los clientes</h1>
        <div class="megaconteiner">
                <div class="container">
                <div style="overflow-x: auto;">
                <table class="clientes">
                    
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
                    
                </table>
                </div>
            </div>
        </div>  
    </body>
</html>
