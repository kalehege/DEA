
package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.product.Product;

public class StoreDB {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/dea?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_PRODUCT_SQL = "INSERT INTO product" + "  (name, description, size, price) VALUES " +
        " (?, ?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,name,email,country from users where id =?";
    private static final String SELECT_ALL_Products = "select * from product";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, country =? where id = ?;";

    public StoreDB() {}
    
        
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }
    
//    private static boolean isSuccess;
//    private static Connection con = null;
//    private static Statement stmt = null;
//    
//    public static boolean insertProduct(String name, String description, String size, String price) {
//        boolean isSuccess = false;
//        
//        try {
//    		con = DBConnection.getConnection();
//    		stmt = con.createStatement();
//                String sql = "insert into product values (0,'"+name+"','"+description+"','"+size+"','"+price+"')";
//    		int rs = stmt.executeUpdate(sql);
//    		
//    		if(rs > 0) {
//    			isSuccess = true;
//    		} else {
//    			isSuccess = false;
//    		}
//    		
//    	}
//    	catch (Exception e) {
//    		e.printStackTrace();
//    	}
// 	
//    	return isSuccess;
//    }
        
    public void insertUser(Product product) throws SQLException {
        System.out.println(INSERT_PRODUCT_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT_SQL)) {
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getDescription());
            preparedStatement.setString(3, product.getSize());               
            preparedStatement.setString(4, product.getPrice());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
    public List < Product > selectAllProducts() {

        List < Product > products = new ArrayList < > ();
        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Products);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String size = rs.getString("size");        
                String price = rs.getString("price");
                products.add(new Product(id, name, description, size, price));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
