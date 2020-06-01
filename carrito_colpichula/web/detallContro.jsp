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
            int id_producto,stock_contro;
            float precio_contro;
            String url_contro,descripcio;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            descripcio = request.getParameter("desc");
            url_contro = request.getParameter("url");
            precio_contro = Float.parseFloat(request.getParameter("precio"));
            stock_contro = Integer.parseInt(request.getParameter("stock"));
        %>
        
        <img src="<%= url_contro %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Descripcion : <%= descripcio %><br>
        Precio: <%= precio_contro %><br>
        Stock: <%= stock_contro %><br>
        
        
    </body>
</html>
