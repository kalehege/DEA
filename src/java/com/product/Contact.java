/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.product;

/**
 *
 * @author niZeo
 */
public class Contact {
    
        
    protected int id;
    protected String name;
        
    protected String email;
    protected String subject;
    protected String message;  
    
        
    public Contact(){}
    
     public Contact (String name, String email, String message){
   
         super();
        this.name = name;
        this.email = email;
        this.message = message;
     }
     
             
     public Contact (int id, String name, String email, String message){
   
         super();
         this.id = id;
        this.name = name;
        this.email = email;
        this.message = message;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
}
