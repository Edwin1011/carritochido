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
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
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
        <header>
            <input type="checkbox" id="btn-menu">
                <label for="btn-menu"></label>
            <div class="logo-cont">
                <div class="logo">
                </div>
            </div>
        <nav class="menu">
                <ul>
                    <li><a href="index_cli.jsp">Ver productos</a></li>
                    <li><a href="historial.jsp">Mis compras</a></li>
                    <li><a href="Perfil_cli.jsp"><%= usuario%></a></li>
                </ul>   
        </nav>
        </header>
        <div class="detalles">
            <div class="izquierda">
                <h1>Controlador de volumen</h1><br>
                <img src="<%= url_contro %>" width="500px" height="500px"><br>
            </div>
            <div class="derecha" width="40%">
                <h5>Precio: <%= precio_contro %></h5>
                <h5>Stock: <%= stock_contro %><br></h5>
                <form method="post" action="carrito?id_prod=<%= id_producto%>&url=<%= url_contro%>&stock=<%= stock_contro%>&precio=<%= precio_contro%>&tipo=<%= clas_contro%>">
                    <h5> Cantidad a comprar:</h5>
                        <input type="text" name="cant" placeholder="No mayor al stock" maxlength="2">
                        <input type="submit" value="Agregar al carrito" class="button">            
                </form>
            </div>
                
        </div>
    </body>
</html>
