/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author edwin
 */
public class DetalleCompra {
    private int id_compra,id_cliente,id_producto,tipo_prod,cantidad_compra,item;
    private float subtotal_compra,total_compra;
    private String fecha_compra;
    
    public static int Guardar(DetalleCompra d){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call InsertarCompra(?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, d.getId_cliente());
            ps.setInt(2, d.getId_producto());
            ps.setInt(3, d.getTipo_prod());
            ps.setInt(4, d.getCantidad_compra());
            ps.setFloat(5, d.getSubtotal_compra());
            ps.setFloat(6, d.getTotal_compra());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    
    public  int getUsuariobyNombre (String nombre) throws ClassNotFoundException{
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cuerpo c = new Cuerpo();
        int id_cli = 0;
        try {
            
            con = Conexion.getConnection();
            String q = "call getUsuariobyNombre(?)";
            ps = con.prepareStatement(q);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            
            while (rs.next()){
                id_cli = rs.getInt(1);
            }
        } catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            try{
                rs.close();
                ps.close();
                con.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        return id_cli ;
    }
    public  static List<DetalleCompra> getHistorial(int id_cliente) throws ClassNotFoundException{
        List<DetalleCompra> lista = new ArrayList<DetalleCompra>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call todas_compras(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_cliente);
            rs = ps.executeQuery();
            
            while(rs.next()){                
                DetalleCompra dc = new DetalleCompra();
                dc.setId_compra(rs.getInt(1));
                dc.setId_cliente(rs.getInt(2));
                dc.setId_producto(rs.getInt(3));
                dc.setTipo_prod(rs.getInt(4));
                dc.setCantidad_compra(rs.getInt(5));
                dc.setSubtotal_compra(rs.getFloat(6));
                dc.setTotal_compra(rs.getFloat(7));
                dc.setFecha_compra(rs.getString(8));
                
                lista.add(dc);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            lista=null;
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return lista;
    }
    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public int getTipo_prod() {
        return tipo_prod;
    }

    public void setTipo_prod(int tipo_prod) {
        this.tipo_prod = tipo_prod;
    }

    public int getCantidad_compra() {
        return cantidad_compra;
    }

    public void setCantidad_compra(int cantidad_compra) {
        this.cantidad_compra = cantidad_compra;
    }

    public float getSubtotal_compra() {
        return subtotal_compra;
    }

    public void setSubtotal_compra(float subtotal_compra) {
        this.subtotal_compra = subtotal_compra;
    }

    public float getTotal_compra() {
        return total_compra;
    }

    public void setTotal_compra(float total_compra) {
        this.total_compra = total_compra;
    }

    public String getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(String fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }
    
    
}
