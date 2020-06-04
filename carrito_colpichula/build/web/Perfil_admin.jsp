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
                    <li><a href="index_admin.jsp">Ver productos</a></li>
                    <li><a href="CerrarSesion">Cerrar Sesion</a></li>
                </ul>   
            
            </nav>
        </header>
                        
                        <%
                    List<Admin> lista = Admin.getAllAdmin();
                    Admin a = new Admin();
                    for (int i = 0; i < lista.size(); i++) {
                        a = (Admin)lista.get(i);
                %>
                <div class="card">
      <div class="card-image">
        <img src="https://res.cloudinary.com/dgvhkv4ng/image/upload/v1591172811/banner_sdkvqd.jpg" alt="">
      </div>
      <div class="profile-image">
        <img src="https://res.cloudinary.com/dgvhkv4ng/image/upload/v1591172811/pandaP_vgtv3z.png" alt="">
      </div>
      <div class="card-content">
        <h3><%= a.getNom_admi()%></h3>
        <form method="post" action="EditarNombre.jsp">
        <input type="submit" value="Editar" class="btn-edit">
        </form>
      </div>
        <div class="usu">
            <div>
                        <table class="usuario">
                            <tr align="center">
                                <td>
                                    Apellido Paterno: <%= a.getAppat_admi()%>
                                </td>
                                
                            </tr>
                            <tr align="center">
                                <td>
                                    Apellido Materno: <%= a.getApmat_admi()%>
                                </td>
                                
                            </tr>
                            <tr align="center">
                                <td>
                                    Fecha de Nacimiento: <%= a.getFechaNaci_admi()%>
                                </td>
                                
                            </tr>
            </table>
            </div>
            <div>
                    <table class="usuario">
                            <tr align="center">
                                <td>
                                    Direccion: <%= a.getDir_admi()%>
                                </td>
                               
                            </tr>
                            <tr align="center">
                                <td>
                                    Numero de telefono: <%= a.getTel_admi()%>
                                </td>
                                
                            </tr>
            </table>
            </div>       
            <div>
                <table class="usuario">
                            <tr align="center">
                                <td>
                                    Numero de celular: <%= a.getCel_admi()%>
                                </td>
                                
                            </tr>
                            <tr align="center">
                                <td>
                                    Nombre de usuario: <%= a.getUsuario()%>
                                </td>
                            </tr>
                            <tr align="center">
                                <td>
                                   Contraseña: <%= a.getContraseña() %>
                                </td>
                            </tr>     
                </table>
            </div>
            
        
      </div> <a href="editarAdmin.jsp">Editar datos menos el usuario y contraseña</a>
    </div>
                                
                                <%
                            }
                        %>
                        
    </body>
</html>
