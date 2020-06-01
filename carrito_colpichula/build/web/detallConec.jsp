<%-- 
    Document   : detallcuerpo
    Created on : 31/05/2020, 11:04:24 PM
    Author     : edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Detalles de un micro</h1>
        <%
            int id_producto,stock_conec;
            float precio_conec;
            String nombre_conec,url_conec;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            nombre_conec = request.getParameter("nombre");
            url_conec = request.getParameter("url");
            precio_conec = Float.parseFloat(request.getParameter("precio"));
            stock_conec = Integer.parseInt(request.getParameter("stock"));
        %>
        
        <img src="<%= url_conec %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Tipo de conexion: <%= nombre_conec %><br>
        Precio: <%= precio_conec %><br>
        Stock: <%= stock_conec %><br>
    </body>
</html>
