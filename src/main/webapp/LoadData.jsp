<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate ");

response.setHeader("Pragma","no-cache");

response.setHeader("Expires","0");



%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="LoadData.css">
</head>
<body>
<%@ page import ="java.sql.*" %>
 <%
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","connecthp");
   PreparedStatement pst=con.prepareStatement("select*from loaddata");
   ResultSet rs=pst.executeQuery();

 %>
      <img style="margin-left: 500px;width: 500px;" src="Screenshot 2023-11-06 205555.png" alt="">
    <p style="display: flex;justify-content:right;justify-content: center;">
        NISHANTH B 20E227 <br>
        VIJAIANAND P 20E249 <br>
        VIGNESH I 21E612 <br>
        VIGNESH V 21E613 <br>
        <br>
        <br>
        Mr.P. GAJENDRAN, M.E.,(Ph.D.,) <br>
        AP/EEE <br></p>
    <h2>Load Lifter Data</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>S.no</th>
            <th>Floor(From)</th>
            <th>Floor(To)</th>
            <th>Weight (in kgs)</th>
            <th>Type of Load(Detected By AI)</th>

        </tr>
        </thead>
        <tbody>
         <%while(rs.next()){
                    	%>  
        <tr>
            <td><%=rs.getString("S.no") %></td>
            <td><%=rs.getString("initialFloor") %></td>
            <td><%=rs.getString("destinationFloor") %></td>
            <td><%=rs.getString("Weight") %></td>
            <td><%=rs.getString("LoadType") %></td>

        </tr>
       
        <%}%>
        <tbody>
    </table>
</div>
</body>
</html>