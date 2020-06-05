<%-- 
    Document   : editarAdmin
    Created on : 2/06/2020, 06:45:51 AM
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
        <h1>Editar datos</h1>
        <form method="post" action="EditarAdmi">
            
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" name="name" placeholder="Nombre 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="apepat" placeholder="Apellido paterno 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="apemat" placeholder="Apellido Materno 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="date" name="fecha" placeholder="Fecha de Nacimiento YYYY-MM-DD">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="direc" placeholder="Direccion 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="tel" placeholder="Telefono">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="cel" placeholder="numero de celular">
                
                <br>
                <br>
                
            </div>
                <input type="submit" value="Camabiar" class="button">
        </div>
        </form>
    </body>
</html>
