/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lms2;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author nahid
 */
public class db {
    
    Connection con = null;
    
    public  static Connection ConnectDB(){
        
        try {
            String name = "root";
            String pass = "";
            String url = "jdbc:mysql://localhost:3306/lms?zeroDateTimeBehavior=convertToNull";
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection(url,name,pass);
            
            return con;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return null;
    }
    
}
