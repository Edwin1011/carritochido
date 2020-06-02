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
        <title>Index</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <h1>Bienvenidos</h1>
        
        
        
        
        <a href="Login.jsp"><input type="button" value="Iniciar sesion"> </a><br><br>
        
        <h1>Lista de todos los produtos</h1>
        <br>
        <h1>Cuerpos:</h1>        
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
                                <div class="Contenedor-cuerpos">
                                    <div>Audifonos tipo: <%= nombre2%> de color: <%= color2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
        <h1>Microfonos:</h1>
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
                                <div class="Contenedor-micros">
                                    <div>Microfonos tipo: <%= nombre2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
        <h1>Conexiones:</h1>
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
                                <div class="Contenedor-conec">
                                    <div>Conexiones tipo: <%= nombre2%></div>
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
    <h1>Controlador:</h1>
    <%
                    List<Contro> lista5 = Contro.getAllContros();
                    Contro c2 = new Contro();
                    for (int i = 0; i < lista5.size(); i++) {
                            c2 = (Contro)lista5.get(i);
                            String url = c2.getImagen();
                %>
                         <form action="Login.jsp">
                                <div class="Contenedor-controlador">
                                    <div class="imagen">                                    
                                        <a><input type="image" src="<%= url%>" alt="imagen" width="50px" height="50px"></a>
                                    </div>
                                </div>
                            </form>
                        <%
                            }
                        %>
    </body>
</html>

