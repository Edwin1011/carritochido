/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author edwin
 */
public class Conexion {
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
            try {
               Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/bdcarrito";
                String usuario = "root";
                String password = "n0m3l0";
                System.out.println("Si se conecto");
                return DriverManager.getConnection(url, usuario, password);
                
                
                
            } catch (SQLException ex) {
                System.out.println("Error en la BD");
                System.out.println(ex.getStackTrace());
            }catch (Exception e){
                e.printStackTrace();    
                System.out.println("No se conecto bien a la BD");
                
            }
            return null;
    }
    
}
