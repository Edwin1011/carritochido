<%-- 
    Document   : index_cli
    Created on : 31/05/2020, 03:17:13 PM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>Cuerpos en stock</title>
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
                <h1>Cuerpos</h1>
                <div class="container">
                <table class="clientes">
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Nombre
                        </td>
                        <td align="center">
                            Descripcion
                        </td>
                        <td align="center">
                            Color
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
                    Cuerpo pepe = new Cuerpo();
                    
                    List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                    Cuerpo c = new Cuerpo();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cuerpo)lista.get(i);
                        
                %>
                
                
                        <tr>
                            <td align="center"><%= c.getId_cuerpo()%>
                              
                            </td>
                            <%
                                int nombre = c.getNombre();
                                String nombre2 = pepe.getNombreCById(c.getNombre());
                                String descripcion = pepe.getCdescNCById(c.getNombre());
                            %>
                            <td align="center"><%= nombre2 %>

                            </td>
                            <td align="center"><%= descripcion %>

                            </td>
                            <%
                                int color = c.getColor();
                                String color2 = pepe.getColorById(c.getColor());
                                
                                int imagen = c.getImagen();
                                String url = pepe.getImagenById(c.getImagen());
                                
                                int pre = c.getNombre();
                                float precio = pepe.getCprecioNById(c.getNombre());
                            %>
                            <td align="center"><%= color2 %>

                            </td>
                            <td align="center">
                                <div class="imagen">
                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%= precio %>

                            </td>
                            <td align="center"><%= c.getStock()%>

                            </td>
                        <%
                            
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
                </div>
            <div class="stock">
            <div>
                    
            <form method="post" action="SQuitarstock" class="formulario">
            <h1>Alterar stocks</h1>
            <div class="contenedor">
                <div>
                    <select name="name" class="opciones">
                        <option value="1"> IN-EAR </option>
                        <option value="2"> ON-EAR </option>
                        <option value="3"> OVER-EAR</option>
                    </select>
                </div>
                <div>
                    <select name="col" class="opciones">
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
                <div class="input-contenedor2">
                    <input type="text" class="add" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Quitar"  class="btn-s">
                <br>
                <br>
                
            </div>
        </form>
                </div>
        <div>         
        <form method="post" action="guardarcuerpo" class="formulario">
            <h1>Agregar stocks</h1>
            <div class="contenedor">
                <div>
                    <select name="name" class="opciones">
                        <option value="1"> IN-EAR </option>
                        <option value="2"> ON-EAR </option>
                        <option value="3"> OVER-EAR</option>
                    </select>
                </div>
                <div>
                    <select name="col" class="opciones">
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
                <div class="input-contenedor2">
                    <input type="text" class="add" name="stock" placeholder="Cantidad disponible">
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
