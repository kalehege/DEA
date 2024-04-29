
package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.product.Product;
import com.product.Customer;
import com.product.Cart;

public class StoreDB {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/dea?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_PRODUCT_SQL = "INSERT INTO products" + "  (name, description, size, price, category) VALUES " +
        " (?, ?, ?, ?, ?);";
    
       
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customers" + "  (email, f_name, l_name, password, dob) VALUES " +
        " (?, ?, ?, ?, ?);";

    private static final String SELECT_ALL_Products = "select * from products ORDER BY ID DESC;";

        
    private static final String SELECT_Product_BY_ID = "select id,name,description,size,price from products where id =?";
    
    private static final String SELECT_validateUser_ID = "SELECT * FROM customers WHERE email = ? AND password = ?";

        
    private static final String INSERT_ADDToCART_SQL = "INSERT INTO cart" + "  (p_name, p_description, p_price, p_size, p_catagory, customer_email) VALUES " +
        " (?, ?, ?, ?, ?, ?);";

    public StoreDB() {}
    
        
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public boolean validateUser(String email, String password) throws SQLException {
    boolean isValidUser = false;         
    System.out.println(SELECT_validateUser_ID);
    try (Connection connection = getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement(SELECT_validateUser_ID)) {
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, password);      
        try (ResultSet resultSet = preparedStatement.executeQuery()) {
            if (resultSet.next()) {
                isValidUser = true;
            }
        }
    }
    return isValidUser;
}


        
    public void insertProduct(Product product) throws SQLException {
        System.out.println(INSERT_PRODUCT_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT_SQL)) {
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getDescription());
            preparedStatement.setString(3, product.getSize());               
            preparedStatement.setString(4, product.getPrice());
            preparedStatement.setString(5, product.getCategory());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
    public void AddToCart(Cart cart) throws SQLException {
        System.out.println(INSERT_ADDToCART_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ADDToCART_SQL)) {
            preparedStatement.setString(1, cart.getP_name());
            preparedStatement.setString(2, cart.getP_description());
            preparedStatement.setString(3, cart.getP_price());               
            preparedStatement.setString(4, cart.getP_size());
            preparedStatement.setString(5, cart.getP_catagory());    
            preparedStatement.setString(6, cart.getCustomer_email());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
        
    public void userRegister(Customer customer) throws SQLException {
    System.out.println(INSERT_CUSTOMER_SQL);
    try (Connection connection = getConnection(); 
         PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
        preparedStatement.setString(1, customer.getEmail());
        preparedStatement.setString(2, customer.getF_name());
        preparedStatement.setString(3, customer.getL_name());               
        preparedStatement.setString(4, customer.getPassword());  
        preparedStatement.setString(5, customer.getDob());
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
                String category = rs.getString("category");
                products.add(new Product(id, name, description, size, price, category));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }
    
    public Product selectProduct(int id) {
        Product product = null;
        try (Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Product_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String description = rs.getString("description");
                String size = rs.getString("size");        
                String price = rs.getString("price");
                String category = rs.getString("category");
                product = new Product(id, name, description, size, price, category);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
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
