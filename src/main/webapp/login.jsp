<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>

<head>
 
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="login.css">
 
  <title>Sign in</title>
</head>


<body style="background-image: url('images/tealogin.jpg');background-size: cover;">
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  <div>
   
  </div>
  <form class="form1" action="Login" method="post">

  <div class="main">
 
    <p class="sign" align="center">Sign in</p>
    
      <input class="un " type="text" align="center" placeholder="E-mail" name="Email">
      <input class="pass" type="password" align="center" placeholder="Password" name="password">
      <button type="submit" class="submit" align="center" >Sign in</button>
      
      <p class="forgot" align="center"><a href="forgotpass.html">Forgot Password?</p>
        <p class="forgot" align="center"><a href="register.jsp"> <U>CREATE ACCOUNT</U> </p>
     
               
    </div>
    
     </form>
    
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">

         var status=document.getElementById("status").value;
         if(status=="success"){
        	 swal("congrats","registered successfully","success");
         }
         if(status=="failed"){
        	 swal("Sorry","Wrong email or Password ","error");
         }
         
    
    </script>
    
     
</body>

</html>