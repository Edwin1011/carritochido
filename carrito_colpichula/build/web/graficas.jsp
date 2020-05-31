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
        <h1>graficas</h1>
        <div class="megaconteiner">
                <h1>Usuarios</h1>
                <table>
                    <script>
                                    var cantidades = new Array();
                                    var fechas = new Array(); 
                    </script>
                    <%
                    List<estadistica> lista = estadistica.get7Ventas();
                    estadistica c = new estadistica();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (estadistica)lista.get(i);
                %> 
                        <tr>
                            <td align="center"><%= c.getCantidad()%>
                              
                            </td>
                            <td align="center"><%= c.getFecha_c()%>
                                
                        </tr>
                                <script>
                                    
                                    cantidades[<%=i%>] = "<%= c.getCantidad()%>";
                                    fechas[<%=i%>] = "<%= c.getFecha_c()%>";
                                    console.log(cantidades[<%=i%>]);
                                    console.log(fechas[<%=i%>]);
                                     
                                </script>
                <%}%>           
                                
                    
                    
                </table>
                
            </div>
    </body>
</html>

