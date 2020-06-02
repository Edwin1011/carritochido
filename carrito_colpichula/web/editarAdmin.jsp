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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar datos</h1>
        <form method="post" action="EditarAdmi">
            <table>
                <tr>
                    <td>
                        <input type="text" placeholder="Nombre no mayor a 20" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="Apellido paterno no mayor a 20" name="apepat">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="Apellido Mateerno no mayor a 20" name="apemat">
                    </td>
                </tr>
                <tr>
                    <td>
                      <input type="date" name="fecha" placeholder="Fecha de Nacimiento YYYY-MM-DD">
                    </td>
                </tr>
                <tr>
                    <td>
                         <input type="text" placeholder="Direccion no mayor a 80" name="direc">
                    </td>
                </tr>
                <tr>
                    <td>
                         <input type="text" placeholder="Numero de telefono" name="tel">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="Numero de celular" name="cel">
                    </td>
                </tr>
            </table>
            <input type="submit" value="Cambiar">
        </form>
    </body>
</html>
