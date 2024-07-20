package com.LoadData;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.Nav.Cons.Detailsbean;
import com.dao.*;
import com.mysql.cj.Session;
@WebServlet("/LoadData")
public class LoadDataServlet {
	   private static String DB_URL = "jdbc:mysql://localhost:3306/project";
	   private static String USER = "root";
	   private static String PASS = "connecthp";
	   private String DBdriver="com.mysql.cj.jdbc.Driver";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
        RequestDispatcher rd=null;
		
		  HttpSession session=request.getSession();
	

		try {
			Class.forName(DBdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 try {
			Connection con=DriverManager.getConnection(DB_URL,USER,PASS);

			
			 PreparedStatement pst1=con.prepareStatement("select*from loaddata");
			   int count=0;
			   ResultSet rs=pst1.executeQuery();
			    while(rs.next()) {
			    	count++;
			    }
			        session.setAttribute("count",count);
			        
			        PreparedStatement pst2=con.prepareStatement("select price from items");
					   long total=0;
					   ResultSet rs2=pst2.executeQuery();
					    while(rs2.next()) {
					    	total=total+Long.parseLong(rs2.getString("price"));
					    }
					        session.setAttribute("total",total);
			
		}
		
		 
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	
		
      
		
		}

}
