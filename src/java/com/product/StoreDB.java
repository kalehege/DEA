
package com.product;

import java.sql.Connection;
import java.sql.Statement;


public class StoreDB {

    
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    
    public static boolean insertProduct(String name, String description, String size, String price) {
        boolean isSuccess = false;
        
        try {
    		con = DBConnection.getConnection();
    		stmt = con.createStatement();
                String sql = "insert into product values (0,'"+name+"','"+description+"','"+size+"','"+price+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
}
