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
    <title>Scooby Mobiles</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>

<!-- header section starts  -->
 <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<header>

    <a href="#" class="logo">Scooby</a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#products">products</a>
        <a href="delete.jsp">cart</a>
        <a href="#about">about</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
        
    </nav>
        
        </div>
    

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home" style="background-image:url('images/girlbg.jpg');background-size: cover;margin-top:5% ;">
    
    
    <div class="content" >
        <h3 >All new brands</h3>
        <span>Accessories like never before</span>
        <p>  </p>
        
        <a href="#" class="btn">shop now</a>
      
       
    </div>
      <img src="" alt="" style="">
   
    </section>
<!-- home section ends -->



<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <img src="images/icon-1.png" alt="">
        <div class="info">
            <h3>free delivery</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-2.png" alt="">
        <div class="info">
            <h3>10 days returns</h3>
            <span>moneyback guarantee</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-3.png" alt="">
        <div class="info">
            <h3>offer & gifts</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-4.png" alt="">
        <div class="info">
            <h3>1 Year Warranty</h3>
            <span>on all products</span>
        </div>
    </div>
   
</section>

<!-- icons section ends -->

<!-- prodcuts section starts  -->

<section class="products" id="products">

    <h1 class="heading"> latest <span>products</span> </h1>
<form action="Cart" method="post">
    <div class="card">
   
        <div class="box">
            <span class="discount">-20%</span>
            <div class="image">
                <img src="images/iphone12 blue.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <button  class="cart-btn" name="button" value="Apple iPhone 12 (128GB) - Blue@55900" style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 (128GB) - Blue</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.55,900 <span style="text-decoration: line-through;">Rs.64,900</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-17%</span>
            <div class="image">
                <img src="images/iphone 12.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <button href="" class="cart-btn" name="button" value="Apple iPhone 12 128 GB (White, 4 GB RAM)@60999" style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 128 GB (White, 4 GB RAM)</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.60,999 <span style="text-decoration: line-through;">Rs.64,900</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-3%</span>
            <div class="image">
                <img src="images/iphone12pur.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                  <button href="cart.jsp" class="cart-btn" name="button" value="Apple iPhone 12 (128GB) - Purple@55900"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 (128GB) - Purple</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.55,900 <span style="text-decoration: line-through;">Rs.70,900</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-18%</span>
            <div class="image">
                <img src="images/iphone11bl.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                   <button href="cart.jsp" class="cart-btn" name="button" value="Apple iPhone 12 128 GB (Black, 4 GB RAM)@60999"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 128 GB (Black, 4 GB RAM)</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.60,999 <span style="text-decoration: line-through;">Rs.64,900</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-10%</span>
            <div class="image">
                <img src="images/iphone11red.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <button href="cart.jsp" class="cart-btn" name="button" value="Apple iPhone 12 128 GB (Red, 6 GB RAM)@60999"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 128 GB (Red, 6 GB RAM)</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.60,999 <span style="text-decoration: line-through;">Rs.64,900</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-5%</span>
            <div class="image">
           
                <img src="images/iphone11gree.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                   <button href="cart.jsp" class="cart-btn" name="button" value="Apple iPhone 12 128 GB (Green, 4 GB RAM)@60999"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Apple iPhone 12 128 GB (Green, 4 GB RAM)</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.60,999 <span style="text-decoration: line-through;">Rs.64,900</span> </div>
            </div>
        </div>


        <div class="box">
            <span class="discount">-5%</span>
            <div class="image">
                <img src="images/redmi note 10 pro.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                  <button href="cart.jsp" class="cart-btn" name="button" value="Redmi Note 10 Pro Max 128 GB, 8 GB RAM,Glacier White@14999"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>
                    Redmi Note 10 Pro 128 GB, 8 GB RAM,White</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.14999 <span style="text-decoration: line-through;">Rs.15999</span> </div>
            </div>
        </div>


       

        <div class="box">
            <span class="discount">-15%</span>
            <div class="image">
                <img src="images/redminote8pro.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
             <button href="cart.jsp" class="cart-btn" name="button" value="Xiaomi Redmi Note 8 Pro Pearl White 6+128GB@14999" style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Xiaomi Redmi Note 8 Pro Pearl White 6+128GB</h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.14999 <span style="text-decoration: line-through;">Rs.15999</span> </div>
            </div>
        </div>

        <div class="box">
            <span class="discount">-10%</span>
            <div class="image">
                <img src="images/redmi 9a.png" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <button href="cart.jsp" class="cart-btn" name="button" value="XIAOMI REDMi NOTE 9 DUAL 4GB/128GB WHITE@9999"  style="background-color:#e84393 ;color: white;font-size:20px;">Add to Cart</button>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>XIAOMI REDMi NOTE 9 DUAL 4GB/128GB WHITE </h3>
                <div class="price"  style="font-size: large;color: #e84393;">Rs.9999 <span style="text-decoration: line-through;">Rs.11999</span> </div>
            </div>
        </div>

       
     

        

       
    </div>
    </form>

</section>

<!-- prodcuts section ends -->

<!-- review section starts  -->

<section class="review" id="review">

<h1 class="heading"> customer's <span>review</span> </h1>

<div class="card">

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti asperiores laboriosam praesentium enim maiores? Ad repellat voluptates alias facere repudiandae dolor accusamus enim ut odit, aliquam nesciunt eaque nulla dignissimos.</p>
        <div class="user">
            <img src="images/pic-1.png" alt="">
            <div class="user-info">
                <h3>john deo</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti asperiores laboriosam praesentium enim maiores? Ad repellat voluptates alias facere repudiandae dolor accusamus enim ut odit, aliquam nesciunt eaque nulla dignissimos.</p>
        <div class="user">
            <img src="images/pic-2.png" alt="">
            <div class="user-info">
                <h3>john deo</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti asperiores laboriosam praesentium enim maiores? Ad repellat voluptates alias facere repudiandae dolor accusamus enim ut odit, aliquam nesciunt eaque nulla dignissimos.</p>
        <div class="user">
            <img src="images/pic-3.png" alt="">
            <div class="user-info">
                <h3>john deo</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

</div>
    
</section>

<!-- review section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

    <h1 class="heading"> <span> contact </span> us </h1>

    <div class="row">

        <form action="">
            <input type="text" placeholder="name" class="box">
            <input type="email" placeholder="email" class="box">
            <input type="number" placeholder="number" class="box">
            <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>

        <div class="image">
            <img src="images/contact-img.svg" alt="">
        </div>

    </div>

</section>

<!-- contact section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">about</a>
            <a href="#">products</a>
            <a href="#">review</a>
            <a href="#">contact</a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#">my account</a>
            <a href="#">my order</a>
            <a href="#">my favorite</a>
        </div>

        <div class="box">
            <h3>locations</h3>
            <a href="#">india</a>
            <a href="#">USA</a>
            <a href="#">japan</a>
            <a href="#">france</a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#">+123-456-7890</a>
            <a href="#">example@gmail.com</a>
            <a href="#">mumbai, india - 400104</a>
            <img src="images/payment.png" alt="">
        </div>

    </div>


</section>

<!-- footer section ends -->


<!-- about section starts  -->

<section class="about" id="about">

    <h1 class="heading"> <span> about </span> us </h1>

    <div class="row">

        <div class="video-container">
            <video src="images/apple.mp4" loop autoplay muted></video>
            <h3>BEST MOBLIES</h3>
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem cumque sit nemo pariatur corporis perspiciatis aspernatur a ullam repudiandae autem asperiores quibusdam omnis commodi alias repellat illum, unde optio temporibus.</p>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Accusantium ea est commodi incidunt magni quia molestias perspiciatis, unde repudiandae quidem.</p>
            <a href="#" class="btn">learn more</a>
        </div>

    </div>

</section>

<!-- about section ends -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type="text/javascript">
         var status=document.getElementById("status").value;
         if(status=="success"){
        	 swal("congrats","item added sucessfully to the cart ","success");
         }
    
    </script>









<script src="jquery-1.12.4.min.js"></script>
<script src="bootstrap.min.js"></script>


    
</body>
</html>