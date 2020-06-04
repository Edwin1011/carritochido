<%-- 
    Document   : Perfil_admin
    Created on : 2/06/2020, 06:16:36 AM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <title>Mi perfil</title>
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
                    <li><a href="index_cli.jsp">Ver productos</a></li>
                    <li><a href="historial.jsp">Mis compras</a></li>
                    <li><a href="CerrarSesion">Cerrar Sesion</a></li>
                </ul>   
            
            </nav>
        </header>
                <%
                    DetalleCompra de = new DetalleCompra();
                    Cliente c = new Cliente();
                    int id_cli = de.getUsuariobyNombre(usuario);
                    
                    c = Cliente.getClienteById(id_cli);
                    
                %>
        <div class="card">
      <div class="card-image">
        <img src="https://res.cloudinary.com/dgvhkv4ng/image/upload/v1591172811/banner_sdkvqd.jpg" alt="">
      </div>
      <div class="profile-image">
        <img src="https://res.cloudinary.com/dgvhkv4ng/image/upload/v1591172811/pandaP_vgtv3z.png" alt="">
      </div>
      <div class="card-content">
        <h3><%= c.getNombre()%></h3>
        <form method="post" action="EditarNombre.jsp">
        <input type="submit" value="Editar" class="btn-edit">
        </form>
      </div>
        <div class="usu">
            <div>
                <table class="usuario">
                            <tr align="center">
                                <td>
                                    Apellido Paterno: <%= c.getAppat()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarApepat.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Materno: <%= c.getApmat()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarApemat.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Fecha de Nacimiento: <%= c.getFecha()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarFecha.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
            </table>
            </div>
            <div>
            <table class="usuario">
                            <tr align="center">
                                <td>
                                    Direccion: <%= c.getDirec()%>
                                </td>
                               <td>
                                    <form method="post" action="EditarDirec.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Direccion de entrega: <%= c.getDirecen()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarDirecEn.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de telefono: <%= c.getTel()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarTel.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
            </table>
            </div>       
            <div>
                <table class="usuario">
                            <tr align="center">
                                <td>
                                    Numero de celular: <%= c.getCel()%>
                                </td>
                                <td>
                                    <form method="post" action="EditarCel.jsp">
                                        <input type="submit" value="Editar" class="btn-edit">
                                    </form>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre de usuario: <%= c.getUsuario()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                   Contraseña: <%= c.getContraseña() %>
                                </td>
                            </tr>     
                </table>
            </div>
            
        
      </div> 
    </div>
    </body>
</html>
