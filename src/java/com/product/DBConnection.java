
package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    
    private static String url = "jdbc:mysql://localhost:3306/dea";
    private static String userName = "root";
    private static String password = "";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, userName, password);
        } catch (ClassNotFoundException e) {
            // Log the error or rethrow as SQLException
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }
    }
}
