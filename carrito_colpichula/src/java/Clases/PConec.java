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
public class PConec {
    private int imagen;
    private int id_conec,stock,tipo;
    private float precio;
    //Guardar a un nunevo cliente
    public static int Guardar(PConec e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            //call InsertarCuerpo(?, ?, ?, ?, ?)
            //Usamoe l de InsertarConexion apra lo sproductis
            //String q = "call InsertarConexion (?, ?, ?)";
            String q = "call ActCoenc(?, ?)";
            ps = con.prepareStatement(q);
            
            ps.setInt(1, e.getTipo());
            ps.setInt(2, e.getStock());
            
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static List<PConec> getAllConexiones() throws ClassNotFoundException{
        List<PConec> lista = new ArrayList<PConec>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            String q = "call ListaConexiones";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                PConec p = new PConec();
                
                p.setId_conec(rs.getInt(1));
                p.setTipo(rs.getInt(2));
                p.setImagen(rs.getInt(3));
                p.setStock(rs.getInt(4));
                
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
            
            String q = "call ELiminarConec(?)";
            
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
    public  String getNombreById( int id_tipo ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String tipo_conec="";
        try {
            con = Conexion.getConnection();
            String q = "call DescTipoConec(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_tipo);
            rs = ps.executeQuery();
            while(rs.next()){
                tipo_conec = rs.getString(2);
            }
            
            System.out.println(id_tipo);
            System.out.println("huevos");
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            System.out.println(id_tipo);
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
        return tipo_conec ;
    }
    
    public  String getImagenById( int id_imagen ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String imagen ="";
        try {
            con = Conexion.getConnection();
            String q = "call Imagen_Conec(?)";
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
    public  float getPrecioById( int id_tipo ) throws ClassNotFoundException{
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        float precio=0;
        try {
            con = Conexion.getConnection();
            String q = "call DescTipoConec(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1,id_tipo);
            rs = ps.executeQuery();
            while(rs.next()){
                precio = rs.getFloat(3);
            }
            
            System.out.println(id_tipo);
            System.out.println("huevos");
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());
            System.out.println(ex.getStackTrace());
            System.out.println(id_tipo);
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

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    public int getId_conec() {
        return id_conec;
    }

    public void setId_conec(int id_conec) {
        this.id_conec = id_conec;
    }

    
}
