
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

import com.product.StoreDB;
import com.product.Product;
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
                    listProduct(request, response);
                    break;
                    
                                    
                case "/all-products":
                    showAllProduct(request, response);
                    break;
                case "/home":
                    showDefualt(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
        
    private void showDefualt(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
        
    private void showAllProduct(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view_all_product.jsp");
        dispatcher.forward(request, response);
    }
        
    private void listProduct(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Product > listProduct = storeDB.selectAllProducts();
        request.setAttribute("listProduct", listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/view_admin_products.jsp");
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
        String size = request.getParameter("size");     
        String price = request.getParameter("price");
        Product newProduct = new Product(name, description, size, price);
        storeDB.insertUser(newProduct);
        response.sendRedirect("product-view");
    }

}
