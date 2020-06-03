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
public class Cliente {
    private String nombre,appat,apmat,fecha,direc,direcen,tel,cel,usuario,contraseña;
    private int id;
    //Verificar todos los usuarios
    public static Cliente verificarCliente(String usuario, String contraseña) throws ClassNotFoundException{
        Cliente c = null;        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
         try {
            con = Conexion.getConnection();
            String q = "call verificar(?, ?)";
            
            ps = con.prepareStatement(q);
            ps.setString(1, usuario);
            ps.setString(2, contraseña);
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                c = new Cliente();
                
                c.setId(rs.getInt("id_cliente"));
                c.setNombre(rs.getString("nom_cli"));
                c.setAppat(rs.getString("appat_cli"));
                c.setApmat(rs.getString("apmat_cli"));
                c.setFecha(rs.getString("fechaNaci_cli"));
                c.setDirec(rs.getString("dir_cli"));
                c.setDirecen(rs.getString("diren_cli"));
                c.setTel(rs.getString("tel_cli"));
                c.setCel(rs.getString("cel_cli"));
                c.setUsuario(rs.getString("usuario"));
                c.setContraseña(rs.getString("contraseña"));
                
                break;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            c=null;
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
         return c;
    }
    //mostrar a todos los clientes
    public static List<Cliente> getAllClientes() throws ClassNotFoundException{
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
    public static int Eliminar(int id) throws ClassNotFoundException{
        int estatus = 0;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Conexion.getConnection();
            
            String q = "call ELiminarCliente(?)";
            
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
    
    //Guardar a un nunevo cliente
    public static int Guardar(Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call guardarcliente(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getNombre());           
            ps.setString(2, e.getAppat());
            ps.setString(3, e.getApmat());
            ps.setString(4, e.getFecha());
            ps.setString(5, e.getDirec());
            ps.setString(6, e.getDirecen());
            ps.setString(7, e.getTel());
            ps.setString(8, e.getCel());
            ps.setString(9, e.getUsuario());
            ps.setString(10, e.getContraseña());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarNombre (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editarNombre_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getNombre()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarApellidoPaterno (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editarPA_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getAppat()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarApellidoMaterno (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editarPMA_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getApmat()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarFecha (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editarfecha_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getFecha()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarDireccion (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editardir_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getDirec()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarDirecEntre (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editardiren_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getDirecen()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarTelefono (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editartel_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getTel()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static int EditarCelular (Cliente e){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            
            String q = "call editarcel_cli(?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, e.getCel()); 
            ps.setInt(2,e.getId());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    public static Cliente getClienteById (int id) throws ClassNotFoundException{
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Cliente c = new Cliente();
        try {
            
            con = Conexion.getConnection();
            String q = "call getClienteId(?)";
            ps = con.prepareStatement(q);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            
            while (rs.next()){
                               
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
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAppat() {
        return appat;
    }

    public void setAppat(String appat) {
        this.appat = appat;
    }

    public String getApmat() {
        return apmat;
    }

    public void setApmat(String apmat) {
        this.apmat = apmat;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getDirec() {
        return direc;
    }

    public void setDirec(String direc) {
        this.direc = direc;
    }

    public String getDirecen() {
        return direcen;
    }

    public void setDirecen(String direcen) {
        this.direcen = direcen;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    
}
