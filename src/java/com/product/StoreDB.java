
package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;


import com.product.Product;
import com.product.Customer;
import com.product.Cart;
import com.product.Contact;

public class StoreDB {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/dea?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_PRODUCT_SQL = "INSERT INTO products" + "  (name, image, description, size, price, category) VALUES " +
        " (?, ?, ?, ?, ?, ?);";
    
       
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customers" + "  (email, f_name, l_name, password, dob, u_type) VALUES " +
        " (?, ?, ?, ?, ?, ?);";
    
        
    private static final String INSERT_Contact_SQL = "INSERT INTO contacts" + "  (name, subject, email,  message) VALUES " +
        " (?, ?, ?, ?);";

    private static final String SELECT_ALL_Products = "select * from products ORDER BY ID DESC;";
    
        
    private static final String SELECT_ALL_Conatct = "select * from contacts ORDER BY ID DESC;";
    
    private static final String SELECT_ALL_Users = "select * from customers ORDER BY ID DESC;";
    
    private static final String SELECT_PRODUCTS_BY_CATEGORY = "SELECT * FROM products WHERE category = ? ORDER BY id DESC;";


        
    private static final String SELECT_Product_BY_ID = "select id,name,description,image,size,price,category from products where id =?";
    
    private static final String SELECT_validateUser_ID = "SELECT * FROM customers WHERE email = ? AND password = ?";

        
    private static final String INSERT_ADDToCART_SQL = "INSERT INTO cart" + "  (p_name, p_description, p_price, p_size, p_catagory, customer_email) VALUES " +
        " (?, ?, ?, ?, ?, ?);";

    private static final String SELECT_Cart_BY_USerMail = "SELECT * FROM cart WHERE customer_email = ?";
  
    private static final String DELETE_Product_SQL = "delete from products where id = ?;";
   
    private static final String DELETE_Cart_SQL = "delete from cart where cart_id = ?;";

    
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
            preparedStatement.setString(3, product.getImage());
            preparedStatement.setString(4, product.getSize());               
            preparedStatement.setString(5, product.getPrice());
            preparedStatement.setString(6, product.getCategory());
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
    
    public List < Product > selectAllProducts() {

        List < Product > products = new ArrayList < > ();
        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Products);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                String description = rs.getString("description");
                String size = rs.getString("size");        
                String price = rs.getString("price");
                String category = rs.getString("category");
                products.add(new Product(id, name, description, image, size, price, category));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }
    
        
    public List < Contact > selectAllContacts() {

        List < Contact > contacts = new ArrayList < > ();
        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Conatct);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String subject = rs.getString("subject");
                String email = rs.getString("email");
                String message = rs.getString("message");
                contacts.add(new Contact (id, name, subject, email, message));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return contacts;
    }
    
        public List < Customer > selectAllUsers() {

        List < Customer > customers = new ArrayList < > ();
        try (Connection connection = getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_Users);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String f_name = rs.getString("f_name");
                String l_name = rs.getString("l_name");
                String password = rs.getString("password");
                String dob = rs.getString("dob");
                String u_type = rs.getString("u_type");
                customers.add(new Customer (id, email, f_name, l_name, password, dob, u_type));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customers;
    }
    
    
    
    public List<Product> selectProductsByCategory(String category) {
    List<Product> products = new ArrayList<>();
    try (Connection connection = getConnection();
         PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCTS_BY_CATEGORY)) {
        preparedStatement.setString(1, category);
        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String image = rs.getString("image");
            String description = rs.getString("description");
            String size = rs.getString("size");        
            String price = rs.getString("price");
            products.add(new Product(id,  name, image, description, size, price, category));
        }
    } catch (SQLException e) {
        printSQLException(e);
    }
    return products;
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
        preparedStatement.setString(6, customer.getU_type());
        System.out.println(preparedStatement);
        preparedStatement.executeUpdate();
    } catch (SQLException e) {
        printSQLException(e);
    }

    }
    

    
    public List<Cart> selectCartByUserEmailFromSession(HttpServletRequest request) {
        List<Cart> carts = new ArrayList<>();
        String userEmail = (String) request.getSession().getAttribute("email");

        if (userEmail != null) {
            try (Connection connection = getConnection();
                 PreparedStatement preparedStatement = connection.prepareStatement(SELECT_Cart_BY_USerMail)) {

                preparedStatement.setString(1, userEmail);

                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    int cart_id = rs.getInt("cart_id");
                    String p_name = rs.getString("p_name");
                    String p_description = rs.getString("p_description");
                    String p_price = rs.getString("p_price");        
                    String p_size = rs.getString("p_size");
                    String p_catagory = rs.getString("p_catagory");
                    String customer_email = rs.getString("customer_email");

                    carts.add(new Cart(cart_id, p_name, p_description, p_price, p_size, p_catagory, customer_email));
                }
            } catch (SQLException e) {
                printSQLException(e);
            }
        }
        return carts;
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
                String image = rs.getString("image");
                String description = rs.getString("description");
                String size = rs.getString("size");        
                String price = rs.getString("price");
                String category = rs.getString("category");
                product = new Product(id, name, image, description, size, price, category);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return product;
    }
    
        
    public boolean deleteProduct(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_Product_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
        
    public boolean deleteCart(int cart_id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_Cart_SQL);) {
            statement.setInt(1, cart_id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
        
    public void insertContact(Contact contact) throws SQLException {
        System.out.println(INSERT_Contact_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_Contact_SQL)) {
            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getSubject()); 
            preparedStatement.setString(3, contact.getEmail());    
            preparedStatement.setString(4, contact.getMessage());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }
    
        
    public Customer getUserByEmail(String email) throws SQLException {
    
        String sql = "SELECT id, f_name, l_name, password, dob, u_type FROM customers WHERE email = ?";
    
        try (Connection connection = getConnection(); 
                PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                int id = rs.getInt("id");
                String firstName = rs.getString("f_name");
                String lastName = rs.getString("l_name");
                String password = rs.getString("password");
                String dob = rs.getString("dob");
                String userType = rs.getString("u_type");
                
                return new Customer(id, email, firstName, lastName, password, dob, userType);
            } else {
                return null; 
            }
        }
   
    } 
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
