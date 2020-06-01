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
        <h1>Detalles de un cuerpo</h1>
        <%
            int id_producto,stock_cuerpo;
            float precio_cuerpo;
            String nombre_cuerpo,desc_cuerpo,color_cuerpo,url_cuerpo;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            nombre_cuerpo = request.getParameter("nombre");
            desc_cuerpo =request.getParameter("desc") ;
            color_cuerpo = request.getParameter("color");
            url_cuerpo = request.getParameter("url");
            precio_cuerpo = Float.parseFloat(request.getParameter("precio"));
            stock_cuerpo = Integer.parseInt(request.getParameter("stock"));
        %>
        
        <img src="<%= url_cuerpo %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Tipo de cuerpo: <%= nombre_cuerpo %><br>
        Descripcion: <%= desc_cuerpo %><br>
        Color: <%= color_cuerpo %><br>
        Precio: <%= precio_cuerpo %><br>
        Stock: <%= stock_cuerpo %><br>
        
        
        <form method="post" action="carrito?id_prod=<%= id_producto%>&url=<%= url_cuerpo%>&nombre=<%= nombre_cuerpo%>&color=<%= color_cuerpo%>">
            Cantidad a comprar:<br>
            <input type="text" name="cant" placeholder="No mayor al stock" maxlength="2">
            <input typue="button" value="Agregar al carrito">            
        </form>
    </body>
</html>
