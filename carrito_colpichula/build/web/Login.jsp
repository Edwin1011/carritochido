<%-- 
    Document   : Login
    Created on : 30/05/2020, 09:07:43 PM
    Author     : edwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <title>Inicia sesion</title>
</head>
<body oncopy='return false' oncut='return false' onpaste='return false' ondragstart="return false" ondrop="return false">
    <div class="login">
            <form method="post" action="VerificarCliente">
            <h1 class="subtitulo">Inicio de sesion</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" placeholder="Usuario" name="usu">
                </div>                
                <div class="input-contenedor">
                    <input type="password" placeholder="Contraseña" name="contra">
                </div>
                <input type="submit" class="button" value = "Iniciar sesion">
                <br>
                <br>
                <p>No tienes una cuenta? <a href="RegistrarCli.jsp">Registrarse</a></p>
                
            </div>
        </form>
    </div>
</body>
</html>
