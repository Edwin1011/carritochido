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
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String usuario = "";
            HttpSession sesionOK = request.getSession();
            if(sesionOK.getAttribute("usuario") == null){
                
            
        %>
        <jsp:forward page="index.jsp">
            <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
        <%
            }else{
                usuario = (String)sesionOK.getAttribute("usuario");
            }
        %>
        <header>
            <input type="checkbox" id="btn-menu">
                <label for="btn-menu"></label>
            <div class="logo-cont">
                <div class="logo">
                </div>
            </div>
        <nav class="menu">
                <ul>
                    
                    <li><a href="graficas.jsp">Ver las ventas</a></li>
                    <li><a href="ListaCli.jsp">Ver todos los clientes</a></li>
                    <li><a href="Perfil_admin.jsp">Ver mi perfil</a></li>
                </ul>   
            
            </nav>
        </header>
        <div class="con-admin">
            <a href="index_admin.jsp"><input type="button" class="admin" value="Ver cuerpos"></a>
            <a href="ListaConexiones.jsp"><input type="button" class="admin" value="Ver conexiones"></a>
            <a href="ListaMicro.jsp"><input type="button" class="admin" value="Ver microfonos"></a>
            <a href="ListaControles.jsp"><input type="button" class="admin" value="Ver controladores"></a>
        </div>
        <br>
        <br>
        <div class="megaconteiner">
                <h1>Conexiones</h1>
                <div class="container">
                <table class="clientes">
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            URL de la imagen
                        </td>
                        <td align="center">
                            Precio
                        </td>
                        <td align="center">
                            Stock
                        </td>
                        
                <%
                    List<Contro> lista = Contro.getAllContros();
                    Contro c = new Contro();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Contro)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= c.getId_cont()%>
                              
                            </td>
                            <td align="center"><%= c.getDesc()%>

                            </td>
                            <td align="center">
                                <img src="<%= c.getImagen() %>" width="50px" height="50px"> 

                            </td>
                            <td align="center"><%= c.getPrecio()%>

                            </td>
                            <td align="center"><%= c.getStock()%>
                            
                        <%
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
                </div>
            <div class="stock">
                <form method="post" id="for" action="Squitarstockcontro" class="formulario">
            <h1>Quitar Stock</h1>
            <div class="contenedor">
                
                <div class="input-contenedor2">
                    <input type="text" name="stock" id="numero" class="add" placeholder="Cantidad disponible">
                </div>            <script src="js/main2.js"></script>   
                <input type="submit" value="Quitar" onclick="validarEdit()" class="btn-s">
                <br>
                <br>
                
            </div>
            </form>
                <form method="post" id="for2" action="guardarcontro" class="formulario">
            <h1>Agregar Stock</h1>
            <div class="contenedor">
                
                <div class="input-contenedor2">
                    <input type="text" name="stock" id="numero2" class="add" placeholder="Cantidad disponible">
                </div>               <script src="js/main2.js"></script>
                <input type="submit" value="Agregar" onclick="validarEdit2()" class="btn-s">
                <br>
                <br>
                
            </div>
        </form>
            </div>
    </body>
</html>

