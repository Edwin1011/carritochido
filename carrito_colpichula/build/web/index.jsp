<%-- 
    Document   : index.jsp
    Created on : 31/05/2020, 09:32:59 PM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clases.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Compra audio-partes en HAUD</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <input type="checkbox" id="btn-menu">
                <label for="btn-menu"></label>
            <div class="logo-cont">
                <div class="logo">
                </div>
            </div>
        <nav class="menu">
                <ul>
                    <li><a href="Login.jsp">Iniciar sesion</a></li>
                </ul>   
            
            </nav>
        </header>
        <div class="baner">
        </div>
        <h1>Lista de todos los produtos</h1>
        <br>
            <div class="generalP">
                
            <%
                    Micro pepe2 = new Micro();
                    List<Micro> lista2 = Micro.getAllMicros();
                    Micro m = new Micro();
                    for (int i = 0; i < lista2.size(); i++) {
                        m = (Micro)lista2.get(i);
                                int nombre = m.getTipo();
                                String nombre2 = pepe2.getTipoById(nombre);
                            
                                int imagen = m.getImagen();
                                String url = pepe2.getImagenById(imagen);
                            %>
                            <form action="Login.jsp">
                                <div class="ContenedorG">
                                    
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="200px" height="200px"></a>
                                    </div>
                                        <input type="submit" class="button-i" value="Ver producto">
                                        <div>Microfonos tipo: <%= nombre2%></div>
                                </div>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </form>
                        <%
                            }
                        %>
         <%  
                    PConec pepe3 = new PConec();
                    List<PConec> lista3 = PConec.getAllConexiones();
                    PConec p = new PConec();
                    for (int i = 0; i < lista3.size(); i++) {
                            p = (PConec)lista3.get(i);
                                int tipo = p.getTipo();
                                String nombre2 = p.getNombreById(tipo);
                                
                                int imagen = p.getImagen();
                                String url = pepe3.getImagenById(imagen);
                            %>
                            <form action="Login.jsp">
                                <div class="ContenedorG">
                                    
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="200px" height="200px"></a>
                                    </div>
                                        <input type="submit" class="button-i" value="Ver producto">
                                        <div>Conexiones tipo: <%= nombre2%></div>
                                </div>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </form>
                        <%
                            }
                        %>
    <%
                    List<Contro> lista5 = Contro.getAllContros();
                    Contro c2 = new Contro();
                    for (int i = 0; i < lista5.size(); i++) {
                            c2 = (Contro)lista5.get(i);
                            String url = c2.getImagen();
                %>
                         <form action="Login.jsp">
                                <div class="ContenedorG">
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="200px" height="200px"></a>
                                        
                                    </div>
                                        <input type="submit" class="button-i" value="Ver producto">
                                </div>
                                        <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </form>
                        <%
                            }
                        %>
            <%
                    Cuerpo pepe = new Cuerpo();
                    
                    List<Cuerpo> lista = Cuerpo.getAllCuerpos();
                    Cuerpo c = new Cuerpo();
                    for (int i = 0; i < lista.size(); i++) {
                            c = (Cuerpo)lista.get(i); 
                            int nombre = c.getNombre();
                            String nombre2 = pepe.getNombreCById(nombre);
                         
                            int color = c.getColor();
                            String color2 = pepe.getColorById(color);
                                
                            int imagen = c.getImagen();
                            String url = pepe.getImagenById(imagen);
                %>                           
                            <form action="Login.jsp">
                                <div class="ContenedorG" >
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="200px" height="200px"></a>
                                    </div>
                                    <div>Cuerpo tipo <%= nombre2%> de color <%= color2%></div>
                                    <input type="submit" class="button-i" value="Ver producto">
                                </div>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </form>
                        <%
                            }
                        %>
            
                </div>
    </body>
</html>

