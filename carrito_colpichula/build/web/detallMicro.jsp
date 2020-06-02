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
        <h1>Detalles de un micro del usuario: <%= usuario%></h1>
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
            int clas_micro = 2;
        %>
        
        <img src="<%= url_micro %>" width="100px" height="100px"><br>
        Id del producto: <%= id_producto %><br>
        Tipo de microfono <%= nombre_cuerpo %><br>
        Descripcion: <%= desc_micro %><br>
        Precio: <%= precio_micro %><br>
        Stock: <%= stock_micro %><br>
        <form method="post" action="carrito?id_prod=<%= id_producto%>&url=<%= url_micro%>&stock=<%= stock_micro%>&precio=<%= precio_micro%>&tipo=<%= clas_micro%>">
            Cantidad a comprar:<br>
            <input type="text" name="cant" placeholder="No mayor al stock" maxlength="2">
        <input type="submit" value="Agregar al carrito">  
        </form>
    </body>
</html>
