<%-- 
    Document   : EditarNombre
    Created on : 2/06/2020, 08:46:00 PM
    Author     : edwin
--%>

<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>Editar Direccion En.</title>
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

                DetalleCompra de = new DetalleCompra();
                    Cliente c = new Cliente();
                    int id_cli = de.getUsuariobyNombre(usuario);
                    
                    c = Cliente.getClienteById(id_cli);
        %>
        <h1>Buenas, que direccion de entrega quieres:</h1>
        <form action="ActDirecEn_cli?id=<%= c.getId() %>" method="post" id="registro">
            <div class="contenedor">
            <input type="text" id="direc" placeholder="Que direccion de entrega quieres" name="nombre">
            <script src="js/main2.js"></script>
            <input type="submit" value="Editar" onclick="validarDiren()" class="button" >
            </div>
        </form>
    </body>
</html>
