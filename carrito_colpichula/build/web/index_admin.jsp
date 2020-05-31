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
        <a href="index_cli.jsp">Lista de los cuerpos</a>
        <a href="ListaConexiones_cli.jsp">Lista de las conexiones</a>
        <a href="ListaMicro_cli.jsp">Lista de los microfonos</a>
        <a href="ListaControles_cli.jsp">Lista de los controladores</a>
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
                            Stock
                        </td>                        
                        <td align="center">
                            Eliminar
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

                            %>
                            <td align="center"><%= color2 %>

                            </td>
                            <td align="center">
                                <div class="imagen">
                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%= c.getStock()%>

                            </td>
                            <td align="center">
                                <a href="EliminarCuerpo?id=<%= c.getId_cuerpo()%>" class="link">Eliminar el id <%= c.getId_cuerpo() %> </a>
                            </td>
                        <%
                            
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
                        <a href="InsertarPCuerpo.jsp">Registrar otro cuerpo</a>
            </div>
        
    </body>
</html>
