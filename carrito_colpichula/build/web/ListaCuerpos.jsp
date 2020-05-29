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
        <h1>Lista de todos los clientes</h1>
        <div class="megaconteiner">
                <h1>Cuerpos</h1>
                <table>
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Nombre
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            Color
                        </td>
                        <td align="center">
                            URL de la Imagen
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
                    Cuerpo pepe = new Cuerpo();
                    
                    List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                    Cuerpo c = new Cuerpo();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cuerpo)lista.get(i);
                        
                %>
                
                
                        <tr>
                            <td align="center"><%= c.getId_cuerpo()%>
                              
                            </td>
                            <%
                                int nombre = c.getNombre();
                                String nombre2 = pepe.getNombreCById(c.getNombre());
                                String descripcion = pepe.getCdescNCById(c.getNombre());
                            %>
                            <td align="center"><%= nombre2 %>

                            </td>
                            <td align="center"><%= descripcion %>

                            </td>
                            <%
                                int color = c.getColor();
                                String color2 = pepe.getColorById(c.getColor());                            
                            %>
                            <td align="center"><%= color2 %>

                            </td>
                            <td align="center"><%= c.getImagen() %>

                            </td>
                            <td align="center"><%= c.getPrecio() %>

                            </td>
                            <td align="center"><%= c.getStock()%>

                            </td>
                            <td align="center">
                                <a href="EliminarCuerpo?id=<%= c.getId_cuerpo()%>" class="link">Eliminar el id <%= c.getId_cuerpo() %> </a>
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
