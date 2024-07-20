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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <title>My Cart</title>
    <link rel="stylesheet" href="cart.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap');
      </style>


</head>
<body  style="background-image: url('images/3.jpg');background-size: cover;" id="refresh">


 <%@ page import ="java.sql.*" %>
 <%
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mobilestore","root","connecthp");
   PreparedStatement pst=con.prepareStatement("select*from items");
   ResultSet rs=pst.executeQuery();

 %>
 

    <div class="card" style="padding-left: 55px;border-radius: 50px; margin-top:5%  ;">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col" style="text-align: center;padding-left:36% ;"><h4><b>YOUR CART</b></h4></div>
                            <div class="col align-self-center text-right text-muted"><%=session.getAttribute("count")%> ITEMS</div>
                        </div>
                    </div>  
                    
                    <% while(rs.next()){
                    	%>  
                    
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center">
                            <div class="col-2"><img class="img-fluid" src="#"></div>
                            <div class="col">
                                
                                <div class="row"><%=rs.getString("itemname") %></div>
                            </div>
                            <div class="col">
                       

                      <input id="form1" min="0" name="quantity" value="1" type="number"
                        class="form-control form-control-sm" style="width:100px ;" />





                            </div>
                            <div class="col">&#8377; <span class="close"><a href="delete.jsp?id=<%=rs.getString("id") %>"><button type="button"  class="delete">&#10005</button></a></span><%=rs.getString("price")%></div>
                        </div>
                    </div>
                    <%}%>
                    
                   
                    
                    <div class="back-to-shop"><a href="index.jsp">&leftarrow;<span class="text-muted">Back to shop</span></a></div>
                </div>
                <div class="col-md-4 summary" style="padding-left:50px ;padding-right: 50px;border-radius: 30px;">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">ITEMS <%=session.getAttribute("count")%> </div>
                        <div class="col text-right">&#8377;<%=session.getAttribute("total")%></div>
                    </div>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Free Delivery</option></select>
                        <p>GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">&#8377;<%=session.getAttribute("total")%></div>
                    </div>
                    <button class="btn" style="background-color: white;">PLACE ORDER</button>
                </div>
            </div>
            
        </div>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>