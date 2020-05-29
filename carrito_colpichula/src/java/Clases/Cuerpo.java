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
public class Cuerpo {
    private String imagen;
    private int id_cuerpo,precio,stock,nombre,color;
    //Guardar a un nunevo cliente
    public static int Guardar(Cuerpo e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            //call InsertarCuerpo(?, ?, ?, ?, ?)
            String q = "call InsertarCuerpo(?, ?, ?, ?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, e.getNombre());
            ps.setInt(2, e.getColor());
            ps.setString(3, e.getImagen());           
            ps.setInt(4, e.getPrecio());
            ps.setInt(5, e.getStock());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static List<Cuerpo> getAllCuerpos() throws ClassNotFoundException{
        List<Cuerpo> lista = new ArrayList<Cuerpo>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaCuerpos";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Cuerpo c = new Cuerpo();                
                c.setId_cuerpo(rs.getInt(1));
                c.setNombre(rs.getInt(2));
                c.setColor(rs.getInt(3));
                c.setImagen(rs.getString(4));
                c.setPrecio(rs.getInt(5));
                c.setStock(rs.getInt(6));
                
                
                lista.add(c);
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
    
    public static int Eliminar(int id) throws ClassNotFoundException{
        int estatus = 0;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Conexion.getConnection();
            
            String q = "call ELiminarCuerpo(?)";
            
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
    public  String getColorById( int id_color ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String d_color="";
        try {
            con = Conexion.getConnection();
            String q = "call DescColor(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_color);
            rs = ps.executeQuery();
            while(rs.next()){
                d_color = rs.getString(2);
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
                System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            }
        }
        return d_color ;
    }
    
    public  String getNombreCById( int id_nombre ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String dt_nombre="";
        try {
            con = Conexion.getConnection();
            String q = "call DesctNombre(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_nombre);
            rs = ps.executeQuery();
            while(rs.next()){
                dt_nombre = rs.getString(2);
            }
            
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
                System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            }
        }
        return dt_nombre ;
    }
    public  String getCdescNCById( int id_nombre ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ResultSet rs2 = null;
        int cdesc_nombre = 0 ;
        String descripcion = "";
        try {
            con = Conexion.getConnection();
            String q = "call DesctNombre(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_nombre);
            rs = ps.executeQuery();
            while(rs.next()){
                cdesc_nombre = rs.getInt(3);
            }
            
            
            String q2 = "call CDescNombre(?)";
            ps=con.prepareStatement(q2);
            ps.setInt(1,cdesc_nombre);
            rs2 = ps.executeQuery();
            
            while(rs2.next()){
               descripcion = rs2.getString(2);
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
                System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            }
        }
        return descripcion ;
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

    public int getNombre() {
        return nombre;
    }

    public void setNombre(int nombre) {
        this.nombre = nombre;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public int getId_cuerpo() {
        return id_cuerpo;
    }

    public void setId_cuerpo(int id_cuerpo) {
        this.id_cuerpo = id_cuerpo;
    }
    
   
    
    
    
}
