<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
  <link rel="stylesheet" href="register.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  
  



  <title>Register</title>
</head>

<body style="background-image: url('images/tealogin.jpg');background-size: cover;">


<form action="Register" method="post">
  <div class="main">
    <p class="sign" align="center">Register here</p>
  
    
      <input class="un " type="text" align="center" placeholder="Enter Your Name" name="name">
      <input class="un " type="number" align="center" placeholder="Enter Your Mobile No" name="mb">
      <input class="un " type="email" align="center" placeholder="Enter your E-mail" name="email">
      <input class="pass" type="password" align="center" placeholder=" Enter your Password" name="password">
      <button type="submit" class="submit" align="center">Register</button>
     
            
    </div>
      </form>
      
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
         var status=document.getElementById("status").value;
         if(status=="success"){
        	 swal("congrats","registered successfully","success");
         }
    
    </script>

</body>

</html>