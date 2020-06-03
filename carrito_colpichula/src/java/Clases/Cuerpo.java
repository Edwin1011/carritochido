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
    private int id_cuerpo,stock,nombre,color,imagen;
    private float precio;
    //Guardar a un nunevo cliente
    public static int Guardar(Cuerpo e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            //Usamos el InsertarCuerpo para registrar los cuerpos en la pagina
            //String q = "call InsertarCuerpo(?, ?, ?, ?)";
            String q = "call prueba(?, ?, ?)";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, e.getNombre());
            ps.setInt(2, e.getColor());
            ps.setInt(3, e.getStock());
            
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
                c.setImagen(rs.getInt(4));
                c.setStock(rs.getInt(5));
                
                
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
        String descripcion = "";
        try {
            con = Conexion.getConnection();
            String q = "call DesctNombre(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_nombre);
            rs = ps.executeQuery();
            while(rs.next()){
                descripcion = rs.getString(3);
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
    public  float getCprecioNById ( int id_nombre ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        float precio = 0;
        try {
            con = Conexion.getConnection();
            String q = "call DesctNombre(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_nombre);
            rs = ps.executeQuery();
            while(rs.next()){
                precio = rs.getFloat(4);
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
        return precio ;
    }
    public  String getImagenById( int id_imagen ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String imagen ="";
        try {
            con = Conexion.getConnection();
            String q = "call Imagen_Cuerpo(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_imagen);
            rs = ps.executeQuery();
            while(rs.next()){
                imagen = rs.getString(2);
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
        return imagen ;
    }
    public static Cuerpo gelProductoById (int id) throws ClassNotFoundException{
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cuerpo c = new Cuerpo();
        try {
            
            con = Conexion.getConnection();
            String q = "call getcuerpoId(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while (rs.next()){
                               
                c.setId_cuerpo(rs.getInt(1));
                c.setNombre(rs.getInt(2));
                c.setColor(rs.getInt(3));
                c.setImagen(rs.getInt(4));
                c.setStock(rs.getInt(5));
                
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
        return c;
    }
    public int getImagen() {
        return imagen;
    }

    public void setImagen(int imagen) {
        this.imagen = imagen;
    }
    
    

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
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
