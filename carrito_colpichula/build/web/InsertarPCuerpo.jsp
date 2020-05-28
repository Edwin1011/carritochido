<%-- 
    Document   : RegistrarCli
    Created on : 18/05/2020, 02:09:08 AM
    Author     : edwin
--%>

<%@page contentType="text/html" import="java.util.*, Clases.*"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>regitrar</title>
    </head>

    <body>
        <h1>Insertar un cuerpo</h1>
        <%
        Cuerpo c = new Cuerpo();
        %>
        <form method="post" action="guardarcuerpo" class="formulario">
            <h1>Registro</h1>
            <div class="contenedor">
                <div>
                    <select name="name">
                        <option value="1"> IN-EAR </option>
                        <option value="2"> ON-EAR </option>
                        <option value="3"> OVER-EAR</option>
                    </select>
                </div>
                <div>
                    <select name="col">
                        <option value="1">Amarillo</option>
                        <option value="2">Azul</option>
                        <option value="3">Azul Cielo</option>
                        <option value="4">Blanco</option>
                        <option value="5">Lila</option>
                        <option value="6">Rosa</option>
                        <option value="7">Naranja</option>
                        <option value="8">Negro</option>
                        <option value="9">Rojo</option>
                        <option value="10">Verde</option>
                    </select>
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
