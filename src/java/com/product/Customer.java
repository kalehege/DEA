
package com.product;

public class Customer {
    
    protected int id;
    protected String email;
    protected String f_name;
    protected String l_name;
    protected String password;
    protected String dob;
    protected String u_type;
    
    public Customer() {}
        
    public Customer(String email, String f_name, String l_name, String password, String dob, String u_type) {
        super();
        this.email = email;
        this.f_name = f_name;
        this.l_name = l_name;
        this.password = password;
        this.dob = dob;
        this.u_type = u_type;
    }
           
    public Customer(int id, String email, String f_name, String l_name, String password, String dob, String u_type) {
        super();
        this.id = id;
        this.email = email;
        this.f_name = f_name;
        this.l_name = l_name;
        this.password = password;
        this.dob = dob;
        this.u_type = u_type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public String getU_type() {
        return u_type;
    }

    public void setU_type(String u_type) {
        this.u_type = u_type;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getL_name(){
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    
    
    
}
