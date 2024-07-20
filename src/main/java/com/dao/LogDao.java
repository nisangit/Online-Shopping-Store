package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class LogDao {
	   private static String DB_URL = "jdbc:mysql://localhost:3306/mobilestore";
	   private static String USER = "root";
	   private static String PASS = "connecthp";
	   private String DBdriver="com.mysql.cj.jdbc.Driver";
	   
	   public void loaddriver(String DBdriver) {
		   try {
			Class.forName(DBdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generate
//			 catch block
			e.printStackTrace();
		}
	   }
	   public static Connection getConnection() throws ClassNotFoundException {
		  Connection con=null;
		   try {
			 con=DriverManager.getConnection(DB_URL,USER,PASS); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		return con;
		   
	   }
	   
	public boolean validate(LogBean logb) throws SQLException, ClassNotFoundException {
		loaddriver(DBdriver);		
		boolean status=false;
		Connection con=getConnection();
		String sql="select * from users where email=? and password=?";
		PreparedStatement pst;
		try {
		pst=con.prepareStatement(sql);
		pst.setString(1,logb.getEmail());
		pst.setString(2,logb.getPassword());
		ResultSet rst=pst.executeQuery();
		status=rst.next();
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return status;
		
	}	
	public static void main(String[] args) throws ClassNotFoundException {
		if(getConnection()!=null) {
			System.out.println("seee");
		}
	}

}

