<%-- 
    Document   : detallcuerpo
    Created on : 31/05/2020, 11:04:24 PM
    Author     : edwin
--%>

<%@page contentType="text/html" language="java" import="java.util.*, Clases.*" session="true" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>Microfono</title>
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
            
            int clas_cuerpo = 1;
        %>
        <div class="detalles">
            <div class="izquierda">
                <h1>Tipo de cuerpo: <%= nombre_cuerpo %></h1><br>
                <img src="<%= url_cuerpo %>" width="500px" height="500px"><br>
            </div>
            <div class="derecha" width="40%">
                <div width="90%"><h5>Descripcion: <%= desc_cuerpo %></h5></div>
                <h5>Color: <%= color_cuerpo %></h5>
                <h5>Precio: <%= precio_cuerpo %></h5>
                <h5>Stock: <%= stock_cuerpo %></h5>
                <input type="hidden" id="stock" value="<%= stock_cuerpo %>">
                <form method="post" id="for" action="carrito?id_prod=<%= id_producto%>&url=<%= url_cuerpo%>&nombre=<%= nombre_cuerpo%>&color=<%= color_cuerpo%>&tipo=<%= clas_cuerpo%>&stock=<%= stock_cuerpo%>&precio=<%= precio_cuerpo%>">
                    <h5> Cantidad a comprar:</h5>
                        <script src="js/main2.js"></script>
                        <input type="text" name="cant" id="numero" placeholder="No mayor al stock" maxlength="2">
                        <input type="submit" value="Agregar al carrito" onclick="validarcuerpo()" class="button">            
                </form>
            </div>
                
        </div>
        
    </body>
</html>
