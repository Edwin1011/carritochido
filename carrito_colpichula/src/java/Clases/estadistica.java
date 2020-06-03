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
public class estadistica {
    private String fecha_c;
    private int cantidad;
    //Verificar todos los usuarios
    //mostrar a todos los clientes
    public static List<estadistica> get7Ventas() throws ClassNotFoundException{
        List<estadistica> lista = new ArrayList<estadistica>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            for (int i = 0; i < 7; i++) {
            con = Conexion.getConnection();
            String q = "call grafica(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,i);
            rs = ps.executeQuery();
            int cant_t = 0;
            estadistica c = new estadistica();
            while(rs.next()){
                cant_t += rs.getInt(2);
                c.setCantidad(cant_t);
                c.setFecha_c(rs.getString(5));
            
                
            }
            lista.add(c);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
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
    public static List<Cliente> get15Ventas() throws ClassNotFoundException{
        List<Cliente> lista = new ArrayList<Cliente>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaClientes";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Cliente c = new Cliente();
                
                c.setId(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setAppat(rs.getString(3));
                c.setApmat(rs.getString(4));
                c.setFecha(rs.getString(5));
                c.setDirec(rs.getString(6));
                c.setDirecen(rs.getString(7));
                c.setTel(rs.getString(8));
                c.setCel(rs.getString(9));
                c.setUsuario(rs.getString(10));
                c.setContraseña(rs.getString(11));
                lista.add(c);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
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
    public static List<Cliente> get30Ventas() throws ClassNotFoundException{
        List<Cliente> lista = new ArrayList<Cliente>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaClientes";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Cliente c = new Cliente();
                
                c.setId(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setAppat(rs.getString(3));
                c.setApmat(rs.getString(4));
                c.setFecha(rs.getString(5));
                c.setDirec(rs.getString(6));
                c.setDirecen(rs.getString(7));
                c.setTel(rs.getString(8));
                c.setCel(rs.getString(9));
                c.setUsuario(rs.getString(10));
                c.setContraseña(rs.getString(11));
                lista.add(c);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
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
    
    
    //Guardar a un nunevo cliente

    public String getFecha_c() {
        return fecha_c;
    }

    public void setFecha_c(String fecha_c) {
        this.fecha_c = fecha_c;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
   
    
    
    
}