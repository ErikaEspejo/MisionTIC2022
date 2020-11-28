/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc_ejemplo;
import java.sql.*;
/**
 *
 * @author ErikaEspejo
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        
        Connection connection = DBconnection.getConnection();
        
        String conexion = (connection != null) ? "Conectado a MySQL" : "ERROR";
        System.out.println(conexion);
        
        Statement st= connection.createStatement();
        String query = "SELECT * FROM persona";
        String nombres = "SELECT nombre FROM persona";
        ResultSet rs = st.executeQuery(query);
        ResultSet rs_nom = st.executeQuery(nombres);

        
    }
    
}
