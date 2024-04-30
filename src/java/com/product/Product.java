
package com.product;


public class Product {    
    protected int id;
    protected String name;
    protected String description;
    protected String size;
    protected String image;
    protected String price;
    protected String category;
    
    public Product() {}
        
    public Product(String name, String description, String image, String size, String price, String category ) {
        super();
        this.name = name;
        this.description = description;
        this.image = image;
        this.size = size;
        this.price = price;
        this.category = category;
    }
           
    public Product(int id, String name, String description, String image, String size, String price, String category) {
        super();
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.size = size;
        this.price = price;    
        this.category = category;

    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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
