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
        <h1>Insertar un microfono</h1>
        <form method="post" action="guardarmicro" class="formulario">
            <h1>Registro</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" name="tipo" placeholder="Tipo de micro">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="img" placeholder="Imagen url">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="pre" placeholder="Precio">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Registrarse" class="button">
                <br>
                <br>
                
            </div>
        </form>
    </body>
</html>
