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
        <h1>Index del admin <%= usuario%></h1>
        <a href="index_admin.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones.jsp">Lista de las conexiones</a>
        <a href="ListaMicro.jsp">Lista de los microfonos</a>
        <a href="ListaControles.jsp">Lista de los controladores</a>
        <a href="ListaCli.jsp">Ver todos los clientes</a>
        <a href="graficas.jsp">Ver las graficas de ventas-fechas</a>
        <br>
        <br>
        <br>
        <div class="megaconteiner">
                <h1>Cuerpos</h1>
                <table>
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
                        <form method="post" action="SQuitarstock" class="formulario">
            <h1>ALterar stocks</h1>
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
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Quitar" class="button">
                <br>
                <br>
                
            </div>
        </form>
                        
        <form method="post" action="guardarcuerpo" class="formulario">
            <h1>Agregar stocks</h1>
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
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="Agregar" class="button">
                <br>
                <br>
                
            </div>
        </form>
            </div>
        
    </body>
</html>
