
package com.product;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Collections;
import javax.servlet.http.HttpSession;

import com.product.StoreDB;
import com.product.Product;
import com.product.Contact;

/**
 *
 * @author niZeo
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/"})
public class ProductServlet extends HttpServlet {
       
    private static final long serialVersionUID = 1L;
    private StoreDB storeDB;
    
    public void init() {
        storeDB = new StoreDB();
    }
    
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getSession().setMaxInactiveInterval(30 * 60);
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/admin/product-add":
                    showNewForm(request, response);
                    break;
                case "/admin/insert":
                    insertProduct(request, response);
                    break;
                case "/admin/product-view":
                    listProductAdmin(request, response);
                    break;
                                  
                case "/product":
                    showEditForm(request, response);
                    break;    
                                    
                case "/all-products":
                    showProductsByCategory(request, response);
                    break;
                case "/home":
                    showDefualt(request, response);
                    break;
                                
                case "/about":
                    showAbout(request, response);
                    break;    
                    
                                    
                case "/contact":
                    showContact(request, response);
                    break;
                                    
                case "/sign-in":
                    showLoginForm(request, response);
                    break; 
                                                   
                case "/register":
                    userRegister(request, response);
                    break;
                                    
                case "/sign-up":
                    showRegisterForm(request, response);
                    break;
                    
                case "/login":
                    userLogin(request, response);
                    break;                 
                case "/cart":
                    AddToCart(request, response);
                    break;
                    
                                   
                case "/view-cart":
                    showCart(request, response);
                    break;
                                    
                case "/checkout":
                    showCheckout(request, response);
                    break;
                                    
                case "/payemnt-complete":
                    showCompletePayemnt(request, response);
                    break;
                    
                                    
                case "/my-account":
                    showMyProfile(request, response);
                    break;
                    
                    
                    
                                    
                case "/delete":
                    deleteProduct(request, response);
                    break;
                    
                                    
                case "/remove-cart":
                    deleteCart(request, response);
                    break;
                    
                                    
                case "/admin":
                    showAdminPanelPage(request, response);
                    break;
                                    
                case "/admin/contact-view":
                    showAdminContact(request, response);
                    break;
                    
                                    
                case "/addcontact":
                    insertContact(request, response);
                    break;


                default:
                    show404Page(request, response);
                    break;

            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    
    private void show404Page(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    response.setStatus(HttpServletResponse.SC_NOT_FOUND);
    RequestDispatcher dispatcher = request.getRequestDispatcher("404.jsp");
    dispatcher.forward(request, response);
}

        
    private void showDefualt(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        
        
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
                
        List < Product > listProduct = storeDB.selectAllProducts();
        request.setAttribute("listProduct", listProduct);
        
                Collections.shuffle(listProduct);

        List<Product> randomProducts = new ArrayList<>();

        for (int i = 0; i < 3 && i < listProduct.size(); i++) {
    
            randomProducts.add(listProduct.get(i));
        }
            
        request.setAttribute("listProduct", randomProducts);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
    
            
    private void showAbout(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("about.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showContact(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
                
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
        dispatcher.forward(request, response);
    }
        
    private void showProductsByCategory(HttpServletRequest request, HttpServletResponse response)
       
            throws SQLException, IOException, ServletException {
        
            String category = request.getParameter("category");

            List<Product> listProduct;
            if (category != null && category.equals("all")) {
                listProduct = storeDB.selectAllProducts();
            } else {
                listProduct = storeDB.selectProductsByCategory(category);
            }
            request.setAttribute("listProduct", listProduct);

            List<Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
            request.setAttribute("listCart", listCart);

            RequestDispatcher dispatcher = request.getRequestDispatcher("view_all_product.jsp");
            dispatcher.forward(request, response);

    }

        
    private void listProductAdmin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Product > listProduct = storeDB.selectAllProducts();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/view_admin_products.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void listContactAdmin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Contact > listContact = storeDB.selectAllContacts();
        request.setAttribute("listContact", listContact);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/view_admin_products.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
                
        List < Product > listProduct = storeDB.selectAllProducts();
        request.setAttribute("listProduct", listProduct);
        
                Collections.shuffle(listProduct);

        List<Product> randomProducts = new ArrayList<>();

        for (int i = 0; i < 3 && i < listProduct.size(); i++) {
    
            randomProducts.add(listProduct.get(i));
        }
            
        request.setAttribute("listProduct", randomProducts);
        
        int id = Integer.parseInt(request.getParameter("id"));
        Product existingProduct = storeDB.selectProduct(id);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("single_item_view.jsp");
        request.setAttribute("product", existingProduct);
        dispatcher.forward(request, response);

    }
    
        
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/addproduct.jsp");
        dispatcher.forward(request, response);
    }
        
    private void insertProduct(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String image = request.getParameter("image");
        String size = request.getParameter("size");     
        String price = request.getParameter("price");
        String category = request.getParameter("category");

        Product newProduct = new Product(name, description, image, size, price, category);
        storeDB.insertProduct(newProduct);
        response.sendRedirect("product-view");
    }
    
        
    private void userRegister(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String email = request.getParameter("email");
        String f_name = request.getParameter("f_name");
        String l_name = request.getParameter("l_name");     
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        Customer newCustomer = new Customer(email, f_name, l_name, password, dob);
        storeDB.userRegister(newCustomer);
        response.sendRedirect("sign-in");
    }
    
        
    private void AddToCart(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException, ServletException {

        String p_name = request.getParameter("p_name");
        String p_description = request.getParameter("p_description");
        String p_price = request.getParameter("p_price");     
        String p_size = request.getParameter("p_size");
        String p_catagory = request.getParameter("p_category");      
        String customer_email = request.getParameter("customer_email");

        if (!"null".equals(customer_email)) {
            Cart addCart = new Cart(p_name, p_description, p_price, p_size, p_catagory, customer_email);
            storeDB.AddToCart(addCart);
        }
        String referer = request.getHeader("Referer");
        response.sendRedirect(referer);
    }

   

   
    private void showRegisterForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("createacc.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showLoginForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }
    
    private void userLogin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    boolean isValidUser = storeDB.validateUser(email, password);
    
    if (isValidUser) {
        HttpSession session = request.getSession();   
        session.setAttribute("email", email);
        response.sendRedirect("home");
    } else {
        response.sendRedirect("sign-in?error=1");
    }

    }
    
        
    private void showCart(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
                
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showCheckout(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
                
        List <Cart> listCart = storeDB.selectCartByUserEmailFromSession(request);
        request.setAttribute("listCart", listCart);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showCompletePayemnt (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
        dispatcher.forward(request, response);
    }
    
    
    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        storeDB.deleteProduct(id);
        response.sendRedirect("admin/product-view");

    }
    
        
    private void deleteCart(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("cart_id"));
        storeDB.deleteCart(id);
                
        String referer = request.getHeader("Referer");
        response.sendRedirect(referer);
    }
    
        
    private void showMyProfile (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
        RequestDispatcher dispatcher = request.getRequestDispatcher("myaccount.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void showAdminPanelPage (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/admin_panel.jsp");
        dispatcher.forward(request, response);
    }
    
            
    private void showAdminContact (HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/admin_contac_view.jsp");
        dispatcher.forward(request, response);
    }
    
        
    private void insertContact(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Contact newContact = new Contact(name, email, message);
        storeDB.insertContact(newContact);
        String referer = request.getHeader("Referer");
        response.sendRedirect(referer);
    }


}
