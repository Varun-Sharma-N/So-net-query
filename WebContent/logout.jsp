<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name = "format-detection" content = "telephone=no" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/bootstrap.css" >
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="css/touchTouch.css">
    
	<script src="js/jquery.js"></script>
    <script  src="js/touchTouch.jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.mobilemenu.js"></script>
    <script src="js/jquery.animate-colors-min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.touchSwipe.min.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    
    <script>
        $(window).load(function() {	 
            
           // Initialize the gallery
            $('.thumb').touchTouch();
            
           //btn-link hover
           $('.color1').hover(function(){
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "100%"}, 450, "easeOutExpo")	
        		$(this).stop().animate({ 'color': "#f26522"}, 150, "easeOutExpo")				 
        	}, function(){	
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "0"}, 450, "easeOutExpo")		
        		$(this).stop().animate({ 'color': "#FFFFFF"}, 350, "easeOutExpo")			 
        	})  
           $('.color2').hover(function(){
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "100%"}, 450, "easeOutExpo")		
        		$(this).stop().animate({ 'color': "#f222b2"}, 150, "easeOutExpo")				 
        	}, function(){	
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "0"}, 450, "easeOutExpo")	
        		$(this).stop().animate({ 'color': "#FFFFFF"}, 350, "easeOutExpo")			 
        	})  
           $('.color3').hover(function(){
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "100%"}, 450, "easeOutExpo")		
        		$(this).stop().animate({ 'color': "#f2b422"}, 150, "easeOutExpo")				 
        	}, function(){	
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "0"}, 450, "easeOutExpo")	
        		$(this).stop().animate({ 'color': "#FFFFFF"}, 350, "easeOutExpo")			 
        	})  
           $('.color4').hover(function(){
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "100%"}, 450, "easeOutExpo")		
        		$(this).stop().animate({ 'color': "#5e22f2"}, 150, "easeOutExpo")				 
        	}, function(){	
        		$(this).parent().parent().parent().find('figure span').stop().animate({ 'top': "0"}, 450, "easeOutExpo")	
        		$(this).stop().animate({ 'color': "#FFFFFF"}, 350, "easeOutExpo")			 
        	})  
            	
        });
    </script>
    
    
</head>
<body class="bg1">

<div class="cont">
<!--==============================header=================================-->
<header id="header">
    <div class="width_1">
          <h2 class="navbar-brand navbar-brand_"><a href="index.html">BIGDATA:MongoDB Based Question and <br></br>Answer System</a></h2>
          <div class="menuheader">
            <nav class="navbar navbar-default navbar-static-top my_navbar" role="navigation">
                <ul class="nav sf-menu">
                  <li class="active"><a href="index.html">Home</a></li>
                  <li><a href="userlogin.jsp">User</a>
                  
                  </li>
                  <li><a href="admin.jsp">Admin</a></li>
                  
             
                </ul>
            </nav>
          </div>
    </div>
</header>
<!--==============================content=================================-->
<div id="content">

    <div class="row_1">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <ul class="list1">
                        <li><figure><a href="img/hh2.jpg" class="thumb"><img src="img/hh2.jpg" alt=""><span></span><strong></strong></a></figure></li>
                        <li><figure><a href="img/hh.jpg" class="thumb"><img src="img/hh.jpg" alt=""><span></span><strong></strong></a></figure></li>
                        <li><figure><a href="img/hh4.jpg" class="thumb"><img src="img/hh4.jpg" alt=""><span></span><strong></strong></a></figure></li>
                        <li><figure><a href="img/hh3.jpg" class="thumb"><img src="img/hh3.jpg" alt=""><span></span><strong></strong></a></figure></li>
                   </ul> 
                </div>
            </div>
        </div>
    </div>
   
    <!--==============================row_2=================================-->
    <div class="row_1">
        <div class="container">
      <div class="skk"> <font size="+4px;" color="green"><marquee behavior="alternate"> BIG-DATA "Q-A"System </marquee></font> </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 row3col">
               
                </div>
                <div class="col-lg-4 col-md-5 col-sm-5 row3col1">
                    <div class="box1 clearfix">
                                    <div class="shak11">
                         
                     <img src="img/images (7).png" alt="" style="margin-left: -200px; width: 650px; height:300px; border: 5px solid black;">
                      <img src="img/Untitleddd.png" alt="" style="margin-left: 250px; margin-top:-320px; width: 750px; height:300px; border: 5px solid black;">
                      </div>                    
                     </div>
                                   
                </div>
            </div>
        </div>
    </div>
</div>

<div class="en_c">
<div class="foot" style="font-size: 25px; color: white;"><marquee>BIGDATA:MongoDB Based Question and Answer System</marquee><br></br></div>
Web Development: <a href="http://www.myfreecsstemplates.com" class="en_l">free css web templates</a></div>
<!--==============================footer=================================-->
<footer>
    <div class="container">
        <div class="row">
            
            <div class="col-lg-7 col-md-5 col-sm-5 pull-left">
                
            </div>
        </div>
    </div>
</footer>
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>

</body>
</html>