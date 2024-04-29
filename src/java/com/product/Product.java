
package com.product;


public class Product {    
    protected int id;
    protected String name;
    protected String description;
    protected String size;
    protected String price;
    
    public Product() {}
        
    public Product(String name, String description, String size, String price) {
        super();
        this.name = name;
        this.description = description;
        this.size = size;
        this.price = price;
    }
           
    public Product(int id, String name, String description, String size, String price) {
        super();
        this.id = id;
        this.name = name;
        this.description = description;
        this.size = size;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    
    
}
