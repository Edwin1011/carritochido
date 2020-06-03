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
public class Contro {
    private String imagen,desc;
    private int id_cont,stock;
    private float precio;
    //Guardar a un nunevo cliente
    public static int Guardar(Contro e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            //call InsertarCuerpo(?, ?, ?, ?, ?)
            //Se uso apra insertar un controlador
            //String q = "call InsertarControlador (?, ?, ?)";
            String q = "call ActContro(?)";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, e.getStock());
            
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static List<Contro> getAllContros() throws ClassNotFoundException{
        List<Contro> lista = new ArrayList<Contro>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaContro";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                Contro c = new Contro();
                
                c.setId_cont(rs.getInt(1));
                c.setDesc(rs.getString(2));
                c.setImagen(rs.getString(3));
                c.setPrecio(rs.getFloat(4));
                c.setStock(rs.getInt(5));
                
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
    public static int Eliminar(int id) throws ClassNotFoundException{
        int estatus = 0;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Conexion.getConnection();
            
            String q = "call ELiminarContro(?)";
            
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
    public static Contro gelProductoById (int id) throws ClassNotFoundException{
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Contro c = new Contro();
        try {
            
            con = Conexion.getConnection();
            String q = "call getcontroId(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while (rs.next()){
                               
                c.setId_cont(rs.getInt(1));
                c.setDesc(rs.getString(2));
                c.setImagen(rs.getString(3));
                c.setPrecio(rs.getInt(4));
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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
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

    

    public int getId_cont() {
        return id_cont;
    }

    public void setId_cont(int id_cont) {
        this.id_cont = id_cont;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    
}
