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
        <h1>Registrarte como cliente</h1>
        <form method="post" action="guardarcliente" class="formulario">
            <h1>Registro</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" name="name" placeholder="Nombre 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="apa" placeholder="Apellido paterno 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="ama" placeholder="Apellido Materno 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="date" name="f_nacimiento" placeholder="Fecha de Nacimiento YYYY-MM-DD">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="direc" placeholder="Direccion 45 caracteres">
                </div>               
                <div class="input-contenedor">
                    <input type="text" name="direc_entrega" placeholder="Direccion de entrega 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="tel" placeholder="Telefono">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="cel" placeholder="numero de celular">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="usu" placeholder="Usuario 20 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="contra" placeholder="Password 20 caracteres">
                </div>
                
                <input type="submit" value="Registrarse" class="button">
                <br>
                <br>
                
            </div>
        </form>
    </body>
</html>
