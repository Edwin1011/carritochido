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
        <a href="CerrarSesion">Cerrar Sesion</a>
        <a href="Perfil_admin.jsp">Ver mi perfil</a>
        <br>
        <br>
        <br>
        <h1>Lista de todos los micros</h1>
        <div class="megaconteiner">
                <h1>Microfonos</h1>
                <table>
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
                        <form method="post" action="Squitarstockmicro" class="formulario">
            <h1>Quitar Stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo">
                        <option value="1">Direccional</option>
                        <option value="2">Bidireccional</option>
                    </select>
                </div>
                <div class="input-contenedor">
                    <input type="text" name="stock" placeholder="Cantidad disponible">
                </div>               
                <input type="submit" value="QUitar" class="button">
                <br>
                <br>
                
            </div>
        </form>
                        <form method="post" action="guardarmicro" class="formulario">
            <h1>agregar stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo">
                        <option value="1">Direccional</option>
                        <option value="2">Bidireccional</option>
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

