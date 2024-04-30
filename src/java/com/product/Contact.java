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
    protected String message;  
    
        
    public Contact(){}
    
     public Contact (String name, String email, String message){
   
         super();
        this.name = name;
        this.email = email;
        this.message = message;
     }
    
}
