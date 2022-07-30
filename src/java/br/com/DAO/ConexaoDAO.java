/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sala19a
 */
public class ConexaoDAO {

    Connection con = null;

    public Connection conexaoBD() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/daniel2?user=root&password=";
            con = DriverManager.getConnection(url);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return con;
    }

}
