/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Rocio
 */
public class  Verificacion extends Conexion {
    
    public boolean autenticacion ( String usuario, String contraseña) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String verificacion= "select * from usuarios where usuario = ? and contraseña = ?";
            pst  = getConexion().prepareStatement(verificacion);
            pst.setString (1, usuario);
            pst.setString(2, contraseña);
            rs  = pst.executeQuery();
            
                if (rs.absolute (1)){
                    return true;
                }
        } catch (SQLException e){
            System.err.println ("Error" + e);
            
        }finally {
            try {
                if (getConexion( ) != null) getConexion(). close();
                if (pst != null) pst.close();
                if (rs  != null) rs.close();
            } catch (SQLException e) {
    }
      
       
    }
        return false;

    }
    
public boolean registrar (String usuario, String nombre, String contraseña) {
    PreparedStatement pst = null;
    
    try {
        String verificacion = "insert into usuarios (usuario, nombre, contraseña) values (?,?,?)";
        pst= getConexion().prepareStatement(verificacion);
        pst. setString (1,usuario);
        pst. setString (2,nombre);
        pst. setString (3,contraseña);
        
            if (pst.executeUpdate() == 1 ) {
                return true;
            }
    
    } catch (Exception ex) {
        
    }finally {
        try {
            if (getConexion( ) != null) getConexion(). close();
            if (pst != null) pst.close();
        }catch ( SQLException e ){
            System.err.println ("Error" + e);
        }
}
    
    return false;
    
 
}

public static void main (String [] args) {
    Verificacion co = new Verificacion();
   System.out.print(co.registrar("pepe", "pepe grillo", "1234"));
    

}
        
}           

