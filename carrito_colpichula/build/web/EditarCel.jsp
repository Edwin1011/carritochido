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

                DetalleCompra de = new DetalleCompra();
                    Cliente c = new Cliente();
                    int id_cli = de.getUsuariobyNombre(usuario);
                    
                    c = Cliente.getClienteById(id_cli);
        %>
        <h1>Buenas, que numero de celular quieres:</h1>
        <form action="Actcel_cli?id=<%= c.getId() %>" method="post">
            <input type="text" placeholder="Que numero de celular quieres" name="nombre">
            <input type="submit" value="Editar">
        </form>
    </body>
</html>
