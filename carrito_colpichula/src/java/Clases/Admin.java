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
public class Admin {
    private int id;
    private String nom_admi,appat_admi,apmat_admi,fechaNaci_admi,dir_admi,tel_admi,cel_admi,usuario,contraseña;
    
    public static List<Admin> getAllAdmin() throws ClassNotFoundException{
        System.out.println("alv todo");
        List<Admin> lista = new ArrayList<Admin>();
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        System.out.println("antes del try");
        try {
            System.out.println("dentro del try");
            con = Conexion.getConnection();
            
            String q = "call getAllAdmin";
            ps = con.prepareStatement(q);
            rs = ps.executeQuery();
            System.out.println("conec o sql ");
            while(rs.next()){
                
                Admin a = new Admin();
                
                a.setId(rs.getInt(1));
                a.setNom_admi(rs.getString(2));
                a.setAppat_admi(rs.getString(3));
                a.setApmat_admi(rs.getString(4));
                a.setFechaNaci_admi(rs.getString(5));
                a.setDir_admi(rs.getString(6));
                a.setTel_admi(rs.getString(7));
                a.setCel_admi(rs.getString(8));
                a.setUsuario(rs.getString(9));
                a.setContraseña(rs.getString(10));
                
                lista.add(a);
            }
            System.out.println("while");
        } catch (SQLException ex) {
            ex.printStackTrace();
            lista=null;
            System.out.println("lista nula");
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
    public static int Editar(Admin a){
        
        int estatus = 0;
        
        Connection con = null;
        PreparedStatement ps = null;
       
        
        try {
            con = Conexion.getConnection();
            String q = "call editarAdmin(?, ?, ?, ?, ?, ?, ?)";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, a.getNom_admi());           
            ps.setString(2, a.getAppat_admi());
            ps.setString(3, a.getApmat_admi());
            ps.setString(4, a.getFechaNaci_admi());
            ps.setString(5, a.getDir_admi());
            ps.setString(6, a.getTel_admi());
            ps.setString(7, a.getCel_admi());
            
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_admi() {
        return nom_admi;
    }

    public void setNom_admi(String nom_admi) {
        this.nom_admi = nom_admi;
    }

    public String getAppat_admi() {
        return appat_admi;
    }

    public void setAppat_admi(String appat_admi) {
        this.appat_admi = appat_admi;
    }

    public String getApmat_admi() {
        return apmat_admi;
    }

    public void setApmat_admi(String apmat_admi) {
        this.apmat_admi = apmat_admi;
    }

    public String getFechaNaci_admi() {
        return fechaNaci_admi;
    }

    public void setFechaNaci_admi(String fechaNaci_admi) {
        this.fechaNaci_admi = fechaNaci_admi;
    }

    public String getDir_admi() {
        return dir_admi;
    }

    public void setDir_admi(String dir_admi) {
        this.dir_admi = dir_admi;
    }

    public String getTel_admi() {
        return tel_admi;
    }

    public void setTel_admi(String tel_admi) {
        this.tel_admi = tel_admi;
    }

    public String getCel_admi() {
        return cel_admi;
    }

    public void setCel_admi(String cel_admi) {
        this.cel_admi = cel_admi;
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
