<%-- 
    Document   : VerCarrito
    Created on : 1/06/2020, 02:29:01 AM
    Author     : edwin
--%>

<%@page contentType="text/html" language="java" import="java.util.*, Clases.*" session="true" pageEncoding="UTF-8"%>
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
        <h1  >Carrito del usuario <%= usuario%></h1>
        
        <%
                //Obtenemos el vector de detalles de la sesion
                Vector<DetalleCompra> vectorDetalles = (Vector<DetalleCompra>)session.getAttribute("detalleCompra");
                if(vectorDetalles==null){
                    response.sendRedirect("index_cli.jsp");
                }
            %>
            
            <table>
                <tbody>
                <td>
                    Imagen
                </td>
                <td>
                    Tipo de Producto:
                </td>
                <td>
                    Id del producto
                </td>                
                <td>
                    precio
                </td>
                <td>
                    Cantidad
                </td>
                <td>
                    subtotal
                </td>
                <td>
                    Numero de elemento
                </td>
                <td>
                    ELiminar
                </td>
                <%
                        DetalleCompra de = new DetalleCompra();
                        Cuerpo pepe = new Cuerpo();
                        Contro pepe2 = new Contro();
                        Micro pepe3 = new Micro();
                        PConec pepe4 = new PConec();
                        float apagar = 0; 
                        for(int i = 0; i < vectorDetalles.size(); i++ ){
                            de = (DetalleCompra)vectorDetalles.get(i);                            
                            
                            
                            int tipo = de.getTipo_prod();
                            System.out.println("GOLA"+tipo);
                            if (tipo ==1) {
                                String tipo2 = "Cuerpo";
                                String elemento = String.valueOf(i);
                                    //Cuerpo
                                    Cuerpo c = new Cuerpo();
                                    
                                    c = Cuerpo.gelProductoById(de.getId_producto());
                                    String url;
                                    int pre;
                                    pre = c.getNombre();
                                    float precio = pepe.getCprecioNById(pre);
                                    float subtotal = de.getSubtotal_compra();
                                    
                                    apagar += subtotal;
                                    url = pepe.getImagenById(c.getImagen());
                                int elementofront= Integer.parseInt(elemento);
                %>
                <tr>
                    <td>
                        <img src="<%= url%>" width="50px" height="50px">
                    </td>
                     <td>
                        <%= tipo2%>
                    </td>
                        
                    <td>
                        <%= c.getId_cuerpo()%>
                    </td>
                    <td>
                        <%= precio%>
                    </td>
                    <td>
                        <%= de.getCantidad_compra() %>
                    </td>
                    <td>
                        <%= subtotal %>
                    </td>
                    <td>
                        <%=elementofront +1%>
                    </td>
                    <td>
                        <a href="Eliminardelcarro?item=<%= elemento%>"> Eliminar el elemento <%= elementofront +1%> </a>
                    </td>
                    <%
                    }else if(tipo==4){
String tipo2 = "Controlador";
                        String elemento = String.valueOf(i);
                        Contro c2 = new Contro();
                        c2= Contro.gelProductoById(de.getId_producto());
                        c2.getId_cont();
                        String url = c2.getImagen();
                        float precio = c2.getPrecio();
                        int elementofront= Integer.parseInt(elemento);
float subtotal = de.getSubtotal_compra();
                                    
                                    apagar  +=subtotal;
                    %>
                    
                    <tr>
                    <td>
                        <img src="<%= url%>" width="50px" height="50px">
                    </td>
                     <td>
                        <%= tipo2%>
                    </td>
                        
                    <td>
                        <%= c2.getId_cont()%>
                    </td>
                    <td>
                        <%= precio%>
                    </td>
                    <td>
                        <%= de.getCantidad_compra() %>
                    </td>
                    <td>
                        <%= subtotal %>
                    </td>
                    <td>
                        <%=elementofront +1%>
                    </td>
                    <td>
                        <a href="Eliminardelcarro?item=<%= elemento%>"> Eliminar el elemento <%= elementofront +1%> </a>
                    </td>
                    
                    <%
                        }else if(tipo==2){
String tipo2 = "Microfono";
                        String elemento = String.valueOf(i);
                        Micro m = new Micro();
                        m= Micro.gelProductoById(de.getId_producto());
                        m.getId_microfono();
                        String url =pepe3.getImagenById( m.getImagen());
                        int pre = m.getTipo();
                        float precio = pepe3.getCPrecioTiById(pre);
int elementofront= Integer.parseInt(elemento);
float subtotal = de.getSubtotal_compra();
                                    
                                    apagar += subtotal;
                    %>
                    
                    <tr>
                    <td>
                        <img src="<%= url%>" width="50px" height="50px">
                    </td>
                     <td>
                        <%= tipo2%>
                    </td>
                        
                    <td>
                        <%= m.getId_microfono()%>
                    </td>
                    <td>
                        <%= precio%>
                    </td>
                    <td>
                        <%= de.getCantidad_compra() %>
                    </td>
                    <td>
                        <%= subtotal %>
                    </td>
                    <td>
                        <%=elementofront  +1%>
                    </td>
                    <td>
                        <a href="Eliminardelcarro?item=<%= elemento%>"> Eliminar el elemento <%= elementofront +1%> </a>
                    </td>
                    <%
                     }else if(tipo==3){
String tipo2 = "Conexion";
                     String elemento = String.valueOf(i);
                        PConec c3 = new PConec();
                        c3= PConec.gelProductoById(de.getId_producto());
                        c3.getId_conec();
                        String url =pepe4.getImagenById( c3.getImagen());
                        int pre = c3.getTipo();
                        float precio = pepe4.getPrecioById(pre);
                        int elementofront= Integer.parseInt(elemento);
                        
                    float subtotal = de.getSubtotal_compra();
                                    
                                    apagar += subtotal;
                    %>
                    
                    <tr>
                    <td>
                        <img src="<%= url%>" width="50px" height="50px">
                    </td>
                     <td>
                        <%= tipo2%>
                    </td>
                        
                    <td>
                        <%= c3.getId_conec()%>
                    </td>
                    <td>
                        <%= precio%>
                    </td>
                    <td>
                        <%= de.getCantidad_compra() %>
                    </td>
                    <td>
                        <%= subtotal %>
                    </td>
                    <td>
                        <%=elementofront +1%>
                    </td>
                    <td>
                        <a href="Eliminardelcarro?item=<%= elemento%>"> Eliminar el elemento <%= elementofront +1%> </a>
                    </td>
                    <%
                    }
                    }
                    %>
                </tr>
                </tbody>
            </table>
                <form method = "post" action="ticket.jsp?<%= apagar%>">
                   <input type="submit" value="Realizar la compra">
                   el total es: <%= apagar%>
                </form>
                
    </body>
</html>
