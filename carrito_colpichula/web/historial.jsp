<%-- 
    Document   : historial
    Created on : 2/06/2020, 05:29:14 AM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/estilo3.css">
        <title>Mis compras</title>
    </head>
    <body><%
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
                    <li><a href="Perfil_cli.jsp"><%= usuario%></a></li>
                </ul>   
            
            </nav>
        </header>
        <h1>Buenas <%= usuario%> este es tu historial</h1>
        <div class="megacontainer">
        <div class="container">
            <div style="overflow-x: auto;">
                
            
            <table class="clientes">
                
                <td align="center">
                    id de la compra
                </td>
                <td>
                    Imagen
                </td>
                <td align="center">
                    id del producto
                </td>
                <td align="center">
                    tipo de producto
                </td>
                <td align="center">
                    cantidad comprada:
                </td>
                <td align="center">
                    precio por unidad
                </td>
                <td align="center">
                    total de la compra
                </td>
                <td align="center">
                    fecha
                </td>
                <%
                DetalleCompra pepe = new DetalleCompra();
                int id_cli = pepe.getUsuariobyNombre(usuario);
                Cuerpo pepecu = new Cuerpo();
                Micro pepe3 = new Micro();
                PConec pepe4 = new PConec();
                List<DetalleCompra> lista = DetalleCompra.getHistorial(id_cli);
                DetalleCompra dc = new DetalleCompra();
                for (int i = 0; i < lista.size(); i++) {
                        dc = (DetalleCompra)lista.get(i);
                        int id_compra = dc.getId_compra();
                        int id_prod = dc.getId_producto();
                        int tipo = dc.getTipo_prod();
                        int cantidad = dc.getCantidad_compra();
                        float precio = dc.getSubtotal_compra();
                        float total = dc.getTotal_compra();
                        String fecha = dc.getFecha_compra();
                        
                        if (tipo == 1) {
                            String tipo2 = "Cuerpo";
                            Cuerpo c = new Cuerpo();                                
                                c = Cuerpo.gelProductoById(dc.getId_producto());
                                    String url;
                            url = pepecu.getImagenById(c.getImagen());
                %>
                <tr>
                    <td align="center"><%= id_compra%>
                </td>
                <td>
                    <img src="<%= url%>" width="50px" height="50px">
                </td>
                <td align="center"><%= id_prod%>
                </td>
                <td align="center"><%= tipo2%>
                </td>
                <td align="center"><%= cantidad%>
                </td>
                <td align="center"><%= precio%>
                </td>
                <td align="center"><%= total%>
                </td>
                <td align="center"><%= fecha%>
                </td>
                </tr>
                
                <% 
                    }else if(tipo == 2){
                    Micro m = new Micro();
                        m= Micro.gelProductoById(dc.getId_producto());
                        m.getId_microfono();
                    String tipo2 = "Microfono";
                    String url =pepe3.getImagenById( m.getImagen());
                %>
                <tr>
                    <td align="center"><%= id_compra%>
                </td>
                <td>
                    <img src="<%= url%>" width="50px" height="50px">
                </td>
                <td align="center"><%= id_prod%>
                </td>
                <td align="center"><%= tipo2%>
                </td>
                <td align="center"><%= cantidad%>
                </td>
                <td align="center"><%= precio%>
                </td>
                <td align="center"><%= total%>
                </td>
                <td align="center"><%= fecha%>
                </td>
                </tr>
                
<%
}else if (tipo == 3) {
       String tipo2 = "Conexion";
PConec c3 = new PConec();
                        c3= PConec.gelProductoById(dc.getId_producto());
                        c3.getId_conec();
                        String url =pepe4.getImagenById( c3.getImagen());
%>
                <tr>
                    <td align="center"><%= id_compra%>
                </td>
                <td>
                    <img src="<%= url%>" width="50px" height="50px">
                </td>
                <td align="center"><%= id_prod%>
                </td>
                <td align="center"><%= tipo2%>
                </td>
                <td align="center"><%= cantidad%>
                </td>
                <td align="center"><%= precio%>
                </td>
                <td align="center"><%= total%>
                </td>
                <td align="center"><%= fecha%>
                </td>
                </tr>

<%
    }else if(tipo == 4){
    String tipo2 = "Controlador";
Contro c2 = new Contro();
c2= Contro.gelProductoById(dc.getId_producto());
                        c2.getId_cont();
                        String url = c2.getImagen();
%>
                <tr>
                    <td align="center"><%= id_compra%>
                </td>
                <td>
                    <img src="<%= url%>" width="50px" height="50px">
                </td>
                <td align="center"><%= id_prod%>
                </td>
                <td align="center"><%= tipo2%>
                </td>
                <td align="center"><%= cantidad%>
                </td>
                <td align="center"><%= precio%>
                </td>
                <td align="center"><%= total%>
                </td>
                <td align="center"><%= fecha%>
                </td>
                </tr>

<%
}
                    }
                %>
                
            </table>
            </div>
        </div>
        </div>
    </body>
</html>
