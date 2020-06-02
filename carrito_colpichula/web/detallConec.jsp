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
        <h1>Detalles de una conexion del usuario: <%= usuario%></h1>
        <%
            int id_producto,stock_conec;
            float precio_conec;
            String nombre_conec,url_conec;
            
            
            id_producto = Integer.parseInt(request.getParameter("id_prod"));
            nombre_conec = request.getParameter("nombre");
            url_conec = request.getParameter("url");
            precio_conec = Float.parseFloat(request.getParameter("precio"));
            stock_conec = Integer.parseInt(request.getParameter("stock"));
            int clas_conec = 3;
        %>
        
        <img src="<%= url_conec %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Tipo de conexion: <%= nombre_conec %><br>
        Precio: <%= precio_conec %><br>
        Stock: <%= stock_conec %><br>
        
         <form method="post" action="carrito?id_prod=<%= id_producto%>&url=<%= url_conec%>&stock=<%= stock_conec%>&precio=<%= precio_conec%>&tipo=<%= clas_conec%>">
            Cantidad a comprar:<br>
            <input type="text" name="cant" placeholder="No mayor al stock" maxlength="2">
        <input type="submit" value="Agregar al carrito">  
        </form>
    </body>
</html>
