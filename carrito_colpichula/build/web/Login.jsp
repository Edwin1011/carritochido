

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        
    <title>Inicia sesion</title>
</head>

<body oncopy='return false' oncut='return false' onpaste='return false' ondragstart="return false" ondrop="return false">
    <div class="login">
            <form method="post"  id="login">
            <h1 class="subtitulo">Inicio de sesion</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="text" id="usuario" placeholder="Usuario" name="usu">
                </div>                
                <div class="input-contenedor">
                    <input type="password" id="contraseña"placeholder="Contraseña" name="contra">
                </div>
                <script src="js/main2.js"></script>
                <input type="submit" class="button" id="boton" onclick="validarlogin()" value="Iniciar sesion">
                <br>
                <br>
                <p>No tienes una cuenta? <a href="RegistrarCli.jsp">Registrarse</a></p>
                
            </div>
        </form>
    </div>
    
</body>
</html>
