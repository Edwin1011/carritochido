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
                <h1>Microfonos</h1>
                <table>
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Tipo de microfono
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            Imagen
                        </td>
                        <td align="center">
                            Stock
                        </td>
                        <td align="center">
                            Eliminar
                        </td>
                <%
                    Micro pepe = new Micro();
                    List<Micro> lista = Micro.getAllMicros();
                    Micro m = new Micro();
                    for (int i = 0; i < lista.size(); i++) {
                        m = (Micro)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= m.getId_microfono()%>
                              
                            </td>
                            <%
                                int nombre = m.getTipo();
                                String descripcion = pepe.getCdescTipoById(m.getTipo());
                                String nombre2 = pepe.getTipoById(m.getTipo());
                            
                                int imagen = m.getImagen();
                                String url = pepe.getImagenById(m.getImagen());
                            %>
                            <td align="center"><%= nombre2 %>

                            </td>
                            <td align="center"><%= descripcion %>

                            </td>
                            <td align="center">
                                <div class="imagen">                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%= m.getStock()%>
                            <td align="center">
                                <a href="EliminarMicro?id=<%= m.getId_microfono()%>" class="link">Eliminar el id <%= m.getId_microfono()%></a>
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

