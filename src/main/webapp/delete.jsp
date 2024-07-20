<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String id=request.getParameter("id");
RequestDispatcher rd=null;
try
{
	HttpSession sess=request.getSession();
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobilestore", "root", "connecthp");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM items WHERE id="+id);

PreparedStatement pst1=conn.prepareStatement("select*from items");
int count=0;
ResultSet rs=pst1.executeQuery();
 while(rs.next()) {
 	count++;
 }
     sess.setAttribute("count",count);



PreparedStatement pst3=conn.prepareStatement("select price from items");
long total=0;
ResultSet rs3=pst3.executeQuery();
 while(rs3.next()) {
 	total=total+Long.parseLong(rs3.getString("price"));
 }
     sess.setAttribute("total",total);
     rd=request.getRequestDispatcher("cart.jsp");
     rd.forward(request, response);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}


%>

