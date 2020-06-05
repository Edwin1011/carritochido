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
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>Unete como nuevo cliente</title>
    </head>

    <body>
        <h1>Registrarte como cliente</h1>
        <form method="post" action="guardarcliente" id="registro" class="formulario">
            <h1>Registro</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" name="name" id="name" placeholder="Nombre 19 caracteres (1)">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="apa" id="apa" placeholder="Apellido paterno 19 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="ama" id="ama" placeholder="Apellido Materno 19 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="date" name="f_nacimiento" id="f_n" placeholder="Fecha de Nacimiento YYYY-MM-DD">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="direc" id="direc" placeholder="Direccion 45 caracteres">
                </div>               
                <div class="input-contenedor">
                    <input type="text" name="direc_entrega" id="diren" placeholder="Direccion de entrega 45 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="tel" id="tel" placeholder="Telefono">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="cel" id="cel" placeholder="numero de celular">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="usu" id="usuario" placeholder="Usuario 20 caracteres">
                </div>
                <div class="input-contenedor">
                    <input type="text" name="contra" id="contraseña" placeholder="Password 20 caracteres">
                </div>
                <script src="js/main2.js"></script>
                <input type="submit" value="Registrarse" onclick="validarregistro()" class="button">
                <br>
                <br>
                
            </div>
        </form>
    </body>
</html>
