<%-- 
    Document   : HistorialCli
    Created on : 2/06/2020, 06:01:29 AM
    Author     : edwin
--%>

<%@page import="java.util.List"%>
<%@page import="Clases.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int id_cliente =Integer.parseInt(request.getParameter("id"));
        Cliente c = new Cliente();
        c = Cliente.getClienteById(id_cliente);
        String nombre= c.getNombre();
        %>
        <h1>Historial del cliente: <%= nombre%></h1>
        <%
        
        %>
        <table>
                <tbody>
                <td align="center">
                    id de la compra
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
                
                List<DetalleCompra> lista = DetalleCompra.getHistorial(id_cliente);
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
                %>
                <tr>
                    <td align="center"><%= id_compra%>
                </td>
                <td align="center"><%= id_prod%>
                </td>
                <td align="center"><%= tipo%>
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
                %>
                </tbody>
            </table>
    </body>
</html>
