package washitPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderController {

    // Connect to the database
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;
    

    // ----------------Insert data function----------------
    public static boolean insertdata(String name, String phone, String address, String item, String quantity) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            // DB connection call
            con = DBConnection.getConnection();

            String sql = "INSERT INTO `order` (name, phone, address, item, quantity) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, name);
            pstmt.setString(2, phone);
            pstmt.setString(3, address);
            pstmt.setString(4, item);
            pstmt.setString(5, quantity);

            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully.");
                isSuccess = true;
            } else {
                System.out.println("Data insert failed. No rows affected.");
            }
        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            e.printStackTrace();
        } finally {
        	
            try {
            	//Closing statement and connection
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }
    
    
    //----------------------GetById------------------------
    public static List<Order> getById(String Id){
    	int convertID = Integer.parseInt(Id);
    	ArrayList<Order> order = new ArrayList<>();
    	
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
            stmt =con.createStatement();
            
            //Query
            String sql = "select * from order where id '"+convertID+"'";
            rs = stmt.executeQuery(sql);
            
            while(rs.next()) {
            	int id = rs.getInt(1);
            	String name = rs.getString(2);
            	String phone = rs.getString(3);
            	String address = rs.getString(4);
            	String item = rs.getString(5);
            	String quantity = rs.getString(6);
            	
            	Order or = new Order(id,name,phone,address,item,quantity);
            	order.add(or);
            }
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}finally {
            try {
            	//Closing statement and connection
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    	return order;
    }
    
    
    //-----------------------GetAll data----------------- 
    public static List<Order> getAllOrders(){
    	
ArrayList<Order> orders = new ArrayList<>();
    	
    	try {
    		//DB Connection
    		con = DBConnection.getConnection();
            stmt =con.createStatement();
            
            //Read Query
            String sql = "select * from `order`";
            rs = stmt.executeQuery(sql);
            
            while(rs.next()) {
            	int id = rs.getInt(1);
            	String name = rs.getString(2);
            	String phone = rs.getString(3);
            	String address = rs.getString(4);
            	String item = rs.getString(5);
            	String quantity = rs.getString(6);
            	
            	Order or = new Order(id,name,phone,address,item,quantity);
            	orders.add(or);
            }
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}finally {
            try {
            	//Closing statement and connection
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    	return orders;	
    }
    
    
 // --------------------Update Data---------------------
    public static boolean updatedata(String id, String name, String phone, String address, String item, String quantity) {
        try {
            // DB Connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            
            // Update query
            String sql = "UPDATE `order` SET name='" + name + "', phone='" + phone + 
                         "', address='" + address + "', item='" + item + "', quantity='" + 
                         quantity + "' WHERE id='" + id + "'";
            
            int rs = stmt.executeUpdate(sql);
            
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
            	//Closing statement and connection
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    
    //--------------------------Delete data-------------------
    public static boolean deletedata(String id) {
        int convID = Integer.parseInt(id);
        boolean isSuccess = false;

        try {
            // DB connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            
            //Delete Query
            String sql = "DELETE FROM `order` WHERE id='" + convID + "'";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
            	//Closing statement and connection
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    
}
