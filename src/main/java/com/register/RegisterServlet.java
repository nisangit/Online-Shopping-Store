package com.register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.Nav.Cons.Detailsbean;
import com.dao.*;

/**
 * Servlet implementation class StudentDetails
 */
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	   private static String DB_URL = "jdbc:mysql://localhost:3306/mobilestore";
	   private static String USER = "root";
	   private static String PASS = "connecthp";
	   private String DBdriver="com.mysql.cj.jdbc.Driver";
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter out=response.getWriter();
		 RequestDispatcher rd=null;
			try {
				
				Class.forName(DBdriver);
				Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
				String sql="insert into users values(?,?,?,?)";
				PreparedStatement pst=con.prepareStatement(sql);
//				pst=con.prepareStatement(sql);
				pst.setString(1,request.getParameter("name"));
				pst.setString(2,request.getParameter("email"));
				pst.setString(3,request.getParameter("mb"));
				pst.setString(4,request.getParameter("password"));
		    
				int i=pst.executeUpdate();
				rd=request.getRequestDispatcher("login.jsp");
				if(i>0) {
					request.setAttribute("status","success");
					

				}
				else {
					request.setAttribute("status","failed");
				}
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

