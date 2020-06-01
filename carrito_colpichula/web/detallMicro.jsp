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
            int id_producto,stock_micro;
            float precio_micro;
            String nombre_cuerpo,desc_micro,url_micro;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            nombre_cuerpo = request.getParameter("nombre");
            desc_micro =request.getParameter("desc") ;
            url_micro = request.getParameter("url");
            precio_micro = Float.parseFloat(request.getParameter("precio"));
            stock_micro = Integer.parseInt(request.getParameter("stock"));
        %>
        
        <img src="<%= url_micro %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Tipo de microfono <%= nombre_cuerpo %><br>
        Descripcion: <%= desc_micro %><br>
        Precio: <%= precio_micro %><br>
        Stock: <%= stock_micro %><br>
    </body>
</html>
