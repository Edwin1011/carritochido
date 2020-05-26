<%-- 
    Document   : editarnomcli
    Created on : 20/05/2020, 01:44:35 AM
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
        String id;
        id = request.getParameter("id");
        %>
        <h1>Editar nombre</h1>
        <form method="post" action="enombrecli" class="formulario">
          <div class="input-contenedor">
                    <input type="text" name="name" placeholder="Nombre 45 caracteres">
          </div>
            
            <input type="submit" value="editar" class="button">
        </form>
    </body>
</html>
