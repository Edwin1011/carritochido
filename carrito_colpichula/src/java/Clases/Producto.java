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
public class Producto {
    private String img;
    private int idprodp,idprod,precio,stock;
    public  int GuardarTodosP(int tipo, int id){
        int tipo_p = tipo;
        int estatus = 0;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con = Conexion.getConnection();
            if (tipo_p == 1) {
                String q = "call GuardarTodosP(?,?)";
                ps = con.prepareStatement(q);
            
                
                ps.setInt(1, tipo);
                ps.setInt(2,id);
                
            }else if (tipo_p==2) {
                String q = "call GuardarTodosP(?,?)";
                ps = con.prepareStatement(q);
                
                
                ps.setInt(1,tipo);
                ps.setInt(2, id);
                
            }else if(tipo_p==3){
                String q = "call GuardarTodosP(?,?)";
                ps = con.prepareStatement(q);
                
                
                ps.setInt(1,tipo);
                ps.setInt(2, id);
                
            }else if(tipo_p==4){
                String q = "call GuardarTodosP(?,?)";
                ps = con.prepareStatement(q);
                
                
                ps.setInt(1,tipo);
                ps.setInt(2, id);
            }
           
            estatus = ps.executeUpdate();
            
            con.close();
        } catch (Exception u) {
            u.printStackTrace();
        }
        return estatus;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getIdprodp() {
        return idprodp;
    }

    public void setIdprodp(int idprodp) {
        this.idprodp = idprodp;
    }

    public int getIdprod() {
        return idprod;
    }

    public void setIdprod(int idprod) {
        this.idprod = idprod;
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
    
    
    
}
