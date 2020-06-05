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
        <title>Destalles de producto</title>
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
                <h1>Tipo de microfono <%= nombre_cuerpo %></h1><br>
                <img src="<%= url_micro %>" width="500px" height="500px"><br>
            </div>
            <div class="derecha" width="40%">
                <div width="90%"><h5>Descripcion: <%= desc_micro %></h5></div>
                <h5>Precio: <%= precio_micro %></h5>
                <h5>Stock: <%= stock_micro %><br></h5>
                <input type="hidden" id="stock" value="<%= stock_micro %>">
                <form method="post" id="for" action="carrito?id_prod=<%= id_producto%>&url=<%= url_micro%>&stock=<%= stock_micro%>&precio=<%= precio_micro%>&tipo=<%= clas_micro%>">
                    <h5> Cantidad a comprar:</h5>
                        <script src="js/main2.js"></script>
                        <input type="text" name="cant" id="numero" placeholder="No mayor al stock" maxlength="2">
                        <input type="submit" value="Agregar al carrito" onclick="validarmicro()" class="button">            
                </form>
            </div>
                
        </div>
    </body>
</html>
