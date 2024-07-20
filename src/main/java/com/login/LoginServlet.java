package com.login;

import com.dao.LogBean;
import com.dao.LogDao;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("Email");
		String pass=request.getParameter("password");
		LogBean logb=new LogBean();
		logb.setUsername(uname);
		logb.setPassword(pass);
		RequestDispatcher rd=null;
		LogDao logdao=new LogDao();
		
		try {
			if(logdao.validate(logb)) {
				rd=request.getRequestDispatcher("index.jsp");
				
			}
			else {
				
				request.setAttribute("status","failed");
				rd=request.getRequestDispatcher("login.jsp");
			}
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
			catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
