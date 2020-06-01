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
                        for(int i = 0; i < vectorDetalles.size(); i++ ){
                            de = (DetalleCompra)vectorDetalles.get(i);                            
                            
                            
                            int tipo = de.getTipo_prod();
                            System.out.println("GOLA"+tipo);
                            if (tipo ==1) {
                                String elemento = String.valueOf(i);
                                    //Cuerpo
                                    Cuerpo c = new Cuerpo();
                                    c = Cuerpo.gelProductoById(de.getId_producto());
                                    String url;
                                    int pre;
                                    pre = c.getNombre();
                                    float precio = pepe.getCprecioNById(pre);
                                    
                                    url = pepe.getImagenById(c.getImagen());
                                
                %>
                <tr>
                    <td>
                        <img src="<%= url%>" width="50px" height="50px">
                    </td>
                     <td>
                        <%= tipo%>
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
                        <%= de.getSubtotal_compra() %>
                    </td>
                    <td>
                        <%=elemento%>
                    </td>
                    <td>
                        <a href="index_cli.jsp?item=<%= elemento%>"> Eliminar el elemento <%= elemento%> </a>
                    </td>
                    <%
                    }
}
                    %>
                    
                </tr>
                </tbody>
            </table>
    </body>
</html>
