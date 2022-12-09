/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author BASAVARAJU
 */
public class ConnectBankDatabase 
{
    public static Connection connectBankDB() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/bankdetails";
        String uname="root";
        String pwd="1111";
        Connection con=DriverManager.getConnection(url, uname, pwd);
        return con;
    }
    
}