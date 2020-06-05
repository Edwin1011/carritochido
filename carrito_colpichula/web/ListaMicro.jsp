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
        <br>
        <div class="megaconteiner">
            <div></div>
                <h1>Microfonos</h1>
                <div class="container">
                <table class="clientes">
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Tipo de microfono
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            Imagen
                        </td>
                        <td align="center">
                            Precio
                        </td>
                        <td align="center">
                            Stock
                        </td>
                <%
                    Micro pepe = new Micro();
                    List<Micro> lista = Micro.getAllMicros();
                    Micro m = new Micro();
                    for (int i = 0; i < lista.size(); i++) {
                        m = (Micro)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= m.getId_microfono()%>
                            </td>
                            <%
                                int nombre = m.getTipo();
                                String descripcion = pepe.getCdescTipoById(m.getTipo());
                                String nombre2 = pepe.getTipoById(m.getTipo());
                            
                                int imagen = m.getImagen();
                                String url = pepe.getImagenById(m.getImagen());
                                
                                int pre = m.getTipo();
                                float precio = pepe.getCPrecioTiById(pre);
                            %>
                            <td align="center"><%= nombre2 %>

                            </td>
                            <td align="center"><%= descripcion %>

                            </td>
                            <td align="center">
                                <div class="imagen">                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%= precio %>

                            </td>
                            <td align="center"><%= m.getStock()%></td>
                        <%
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
                
                </div>
                <div class="stock">
                        <form method="post" action="Squitarstockmicro" class="formulario">
            <h1>Quitar Stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo" class="opciones">
                        <option value="1">Direccional</option>
                        <option value="2">Bidireccional</option>
                    </select>
                </div>
                <div class="input-contenedor2">
                    <input type="text" name="stock" class="add" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="QUitar" class="btn-s">
                <br>
                <br>
                
            </div>
        </form>
                        <form method="post" action="guardarmicro" class="formulario">
            <h1>Agregar stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo" class="opciones">
                        <option value="1">Direccional</option>
                        <option value="2">Bidireccional</option>
                    </select>
                </div>
                <div class="input-contenedor2">
                    <input type="text" name="stock" class="add" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Agregar" class="btn-s">
                <br>
                <br>
                
            </div>
        </form>
            </div>
        </div>
    </body>
</html>

