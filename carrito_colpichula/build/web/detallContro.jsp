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
        
        <%
            String usuario = "";
            HttpSession sesionOK = request.getSession();
            if(sesionOK.getAttribute("usuario") == null){
                
            
        %>
        <jsp:forward page="index.jsp">
            <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
        <%
            }else{
                usuario = (String)sesionOK.getAttribute("usuario");
            }
        %>
        <h1>Detalles de un cuerpo, usuario: <%= usuario%></h1>

        <h1>Detalles de un controlador</h1>
        <%
            int id_producto,stock_contro;
            float precio_contro;
            String url_contro,descripcio;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            descripcio = request.getParameter("desc");
            url_contro = request.getParameter("url");
            precio_contro = Float.parseFloat(request.getParameter("precio"));
            stock_contro = Integer.parseInt(request.getParameter("stock"));
            int clas_contro = 4;
        %>
        
        <img src="<%= url_contro %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Descripcion : <%= descripcio %><br>
        Precio: <%= precio_contro %><br>
        Stock: <%= stock_contro %><br>
        
    <form method="post" action="carrito?id_prod=<%= id_producto%>&url=<%= url_contro%>&stock=<%= stock_contro%>&precio=<%= precio_contro%>&tipo=<%= clas_contro%>">
        Cantidad a comprar:<br>
        <input type="text" name="cant" placeholder="No mayor al stock" maxlength="2">
        <input type="submit" value="Agregar al carrito">  
    </form>
    </body>
</html>
