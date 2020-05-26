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
                <div>
                    <select name="tipo_prod_prueba"> 
                        <option value="cuerpo">Cuerpo</option>
                        <option value ="microfono">Microfono</option>
                        <option value ="conexion">Conexion</option>
                        <option value="controlador">Controladores</option>
                    </select>
                </div>
                
                <input type="submit" value="ir" class="button">
                <br>
                <br>
                
            </div>
        </form>
    </body>
</html>
