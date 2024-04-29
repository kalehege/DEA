
package com.product;

public class Cart {
    
        
    protected int cart_id;
    protected String p_name;
    protected String p_description;
    protected String p_price;
    protected String p_size;
    protected String p_catagory;
    protected String customer_email;
    
    public Cart(){}
    
        
    public Cart(String p_name, String p_description, String p_price, String p_size, String p_catagory, String customer_email) {
        super();
        this.p_name = p_name;
        this.p_description = p_description;
        this.p_price = p_price;
        this.p_size = p_size;
        this.p_catagory = p_catagory;
        this.customer_email = customer_email;
    }
    
        
    public Cart(int cart_id, String p_name, String p_description, String p_price, String p_size, String p_catagory, String customer_email) {
        super();        
        this.cart_id = cart_id;
        this.p_name = p_name;
        this.p_description = p_description;
        this.p_price = p_price;
        this.p_size = p_size;
        this.p_catagory = p_catagory;
        this.customer_email = customer_email;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_description() {
        return p_description;
    }

    public void setP_description(String p_description) {
        this.p_description = p_description;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_size() {
        return p_size;
    }

    public void setP_size(String p_size) {
        this.p_size = p_size;
    }

    public String getP_catagory() {
        return p_catagory;
    }

    public void setP_catagory(String p_catagory) {
        this.p_catagory = p_catagory;
    }

    public String getCustomer_email() {
        return customer_email;
    }

    public void setCustomer_email(String customer_email) {
        this.customer_email = customer_email;
    }
    
}
