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
public class Micro {
    private String imagen;
    private int id_microfono,precio,stock,tipo;
    //Guardar a un nunevo cliente
    public static int Guardar(Micro e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            String q = "call InsertarMicro(?, ?, ?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, e.getTipo());
            ps.setString(2, e.getImagen());           
            ps.setInt(3, e.getPrecio());
            ps.setInt(4, e.getStock());
            
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    
    public static List<Micro> getAllMicros() throws ClassNotFoundException{
        List<Micro> lista = new ArrayList<Micro>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaMicro";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Micro p = new Micro();
                
                p.setId_microfono(rs.getInt(1));
                p.setTipo(rs.getInt(2));
                p.setImagen(rs.getString(3));
                p.setPrecio(rs.getInt(4));
                p.setStock(rs.getInt(5));
                
                lista.add(p);
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
    public static int Eliminar(int id) throws ClassNotFoundException{
        int estatus = 0;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Conexion.getConnection();
            
            String q = "call ELiminarMicros(?)";
            
            ps = con.prepareStatement(q);
            ps.setInt(1, id);
            estatus = ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
            
        }finally{
            try {                
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return estatus;
    }
    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

   

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getId_microfono() {
        return id_microfono;
    }

    public void setId_microfono(int id_microfono) {
        this.id_microfono = id_microfono;
    }

    
}
