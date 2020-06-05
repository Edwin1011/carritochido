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
                <h1>Conexiones</h1>
                <div class="container">
                <table class="clientes">
                    <tbody>
                        <td align="center" >
                            Id
                        </td>
                        <td align="center">
                            Tipo de conexion
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
                    PConec pepe = new PConec();
                    List<PConec> lista = PConec.getAllConexiones();
                    PConec p = new PConec();
                    for (int i = 0; i < lista.size(); i++) {
                            p = (PConec)lista.get(i);
                        
                %>
                        <tr>
                            <td align="center"><%= p.getId_conec()%>
                              
                            </td>
                            <% int tipo = p.getTipo();
                                String nombre2 = p.getNombreById(p.getTipo());
                                
                                int imagen = p.getImagen();
                                String url = pepe.getImagenById(p.getImagen());
                                
                                int pre = p.getTipo();
                                float precio = pepe.getPrecioById(pre);
                            %>
                            <td align="center"><%=nombre2%>

                            </td>
                            <td align="center">
                                <div class="imagen">                                    
                                    <img src="<%= url%>" alt="imagen" width="50px" height="50px">
                                </div>
                            </td>
                            <td align="center"><%=precio%>

                            </td>
                            <td align="center"><%= p.getStock()%></td>
                        <%
                            }
                        %>
                        </tr>                
                    </tbody>
                </table>
                </div>
            <div class="stock">
            <div>
                <form method="post" id="for" action="Squitarstockconec" class="formulario">
            <h1>Quitar stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo" class="opciones">
                        <option value="1">Cableado</option>
                        <option value="2">Bluetooth</option>
                    </select>
                </div>                
                <div class="input-contenedor2">
                    <input type="text" name="stock" id="numero" class="add" placeholder="Cantidad disponible">
                </div>               <script src="js/main2.js"></script>
                <input type="submit" value="Quitar" onclick="validarEdit()" class="btn-s">
                <br>
                <br>
                
            </div>
            </form>
            </div>     
            <div>         
                <form method="post" id="for2" action="guardarconexion" class="formulario">
            <h1>Agregar stock</h1>
            <div class="contenedor">
                <div>
                    <select name="tipo" class="opciones">
                        <option value="1">Cableado</option>
                        <option value="2">Bluetooth</option>
                    </select>
                </div>                
                <div class="input-contenedor2">
                    <input type="text" name="stock" id="numero2" class="add" placeholder="Cantidad disponible">
                </div>             <script src="js/main2.js"></script>  
                <input type="submit" value="Agregar" onclick="validarEdit2()" class="btn-s">
                <br>
                <br>
                
            </div>
            </form>
            </div>
            </div>
    </body>
</html>

