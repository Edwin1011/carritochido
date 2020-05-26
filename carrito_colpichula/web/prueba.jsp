<%-- 
    Document   : ListaCli
    Created on : 20/05/2020, 12:00:12 AM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de todos los clientes</h1>
        <div class="megaconteiner">
                <h1>PRueba</h1>
                <form>
                <table>
                    <tbody>
                        <tr>
                            <td align="center" >
                                <select>
                                    <option>Cuerpo</option>
                                    <option>Conexion</option>
                                </select>
                            </td>
                            <td align="center">
                                <div id="contenedor"></div>
                            </td>
                        </tr>
                        <tr>
                            <td></td> 
                            <td></td> 
                        </tr>            
                    </tbody>
                </table>
                </form>
            </div>
    </body>
    
    <script src="js/prueba.js"></script>
</html>
