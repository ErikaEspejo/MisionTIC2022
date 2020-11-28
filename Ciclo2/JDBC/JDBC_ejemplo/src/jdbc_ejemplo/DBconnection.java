/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package jdbc_ejemplo;
import java.sql.*;

/**
 *
 * @autor: ErikaEspejo 
 * @fecha: Nov 28, 2020
 */
public class DBconnection {
    
    final static String USER = "root";
    final static String PASS = "";
    final static String URL = "jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC";
    
    public static Connection getConnection() throws  SQLException{
        return DriverManager.getConnection(URL,USER,PASS);
    }
    
}
