<%-- 
    Document   : RegistrarCli
    Created on : 18/05/2020, 02:09:08 AM
    Author     : edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>regitrar</title>
    </head>

    <body>
        <h1>Registrar nuevo producto</h1>
        <form method="post" action="intermedio" class="formulario">
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" name="tipo_pro" placeholder="tipo de producto">
                </div>
                
                <input type="submit" value="ir" class="button">
                <br>
                <br>
                
            </div>
        </form>
    </body>
</html>
