<!DOCTYPE html>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.DBCollection"%>
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
  <style>
 #text1
{
border: 2px solid rgb(173, 204, 204);
height: 31px;
width: 223px;
box-shadow: 0px 0px 27px rgb(204, 204, 204) inset;
transition:500ms all ease;
padding:3px 3px 3px 3px;
}

#text1:hover, #text1:focus
{
width:260px;
transition:500ms all ease;
background:url(msg.png) no-repeat right;
background-size:25px 25px;
background-position:96% 62%;
padding:3px 32px 3px 3px;
}
 .tex1
 {
 width:190px;
 color:black;
 font: italic 20px Georgia;	
 
 }   
.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #b8308f;
	-webkit-box-shadow:inset 0px 1px 0px 0px #b8308f;
	box-shadow:inset 0px 1px 0px 0px #b8308f;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ff5bb0), color-stop(1, #d65a9c));
	background:-moz-linear-gradient(top, #ff5bb0 5%, #d65a9c 100%);
	background:-webkit-linear-gradient(top, #ff5bb0 5%, #d65a9c 100%);
	background:-o-linear-gradient(top, #ff5bb0 5%, #d65a9c 100%);
	background:-ms-linear-gradient(top, #ff5bb0 5%, #d65a9c 100%);
	background:linear-gradient(to bottom, #ff5bb0 5%, #d65a9c 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bb0', endColorstr='#d65a9c',GradientType=0);
	background-color:#ff5bb0;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #cc3fa6;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #c70067;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #d65a9c), color-stop(1, #ff5bb0));
	background:-moz-linear-gradient(top, #d65a9c 5%, #ff5bb0 100%);
	background:-webkit-linear-gradient(top, #d65a9c 5%, #ff5bb0 100%);
	background:-o-linear-gradient(top, #d65a9c 5%, #ff5bb0 100%);
	background:-ms-linear-gradient(top, #d65a9c 5%, #ff5bb0 100%);
	background:linear-gradient(to bottom, #d65a9c 5%, #ff5bb0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#d65a9c', endColorstr='#ff5bb0',GradientType=0);
	background-color:#d65a9c;
}
.myButton:active {
	position:relative;
	top:1px;
}

        

        
 </style>
    
    
</head>
<body class="bg1">
<%
if(request.getParameter("msg")!=null)
	out.println("<script>alert('Successfully answered')</script>");
if(request.getParameter("msg1")!=null)
	out.println("<script>alert('No questions for your interest')</script>");
%>

<div class="cont">
<!--==============================header=================================-->
<header id="header">
    <div class="width_1">
          <h2 class="navbar-brand navbar-brand_"><a href="index.html">BIGDATA:MongoDB Based Question and <br></br>Answer System</a></h2>
          <div class="menuheader">
            <nav class="navbar navbar-default navbar-static-top my_navbar" role="navigation">
                 <ul class="nav sf-menu">
                  <li><a href="usermenus.jsp">Home</a></li>
                  <li><a href="uploadprofiledetail.jsp">PROFILE</a></li>
                  <li><a href="uploadques.jsp">QUESTIONS</a></li>
                  <li class="active"><a href="search.jsp">Answer</a></li>
                  <li><a href="viewans.jsp">VIEWQ&A</a></li>
                  <li><a href="chart1.jsp">CHART</a></li>
                  <li><a href="logout.jsp">Logout</a></li>
             
                </ul>
            </nav>
          </div>
    </div>
</header>
<!--==============================content=================================-->
<div id="content">

    
   
    <!--==============================row_2=================================-->
    <div class="row_1">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 row3col">
                <div class="shak" style="border: 5px solid green; width: 450px; margin-top: 30px;">
                 <font size="25px" color="red">
                  Q</font><font size="5px" color="red">uestion-</font><font size="25px" color="red"> c</font><font size="5px" color="red">ategorizing:</font>
                <br></br>
                <font size="5px;" color="#000000;"> 
                * The primary task of Question Categorizer is to categorize a
question into predefined interest categories <br>
* based on the
topic(s) of the question.<br>
 * We also allow users to input selfdefined
tags associate with questions, <br>
 * which are analyzed
in question parsing.<br>
                  </div>
                </div>
                <div class="col-lg-4 col-md-5 col-sm-5 row3col1">
                    
          <div class="shak11" style= "margin-left: 170px; width: 700px;  border: 5px solid black; background-color:#DCDCDC; margin-top: 30px;">
         <%
         HttpSession session2 = request.getSession(false);
String name = (String) session2.getAttribute("fname");
System.out.println("WWWWEEEEERRRR"+name);
%>   <font size="+2" color="red" style="margin-left: 50px; margin-top: 20px;"> 
     Welcome  <%=name %>:  
     
     <%                        
   try
               {
               	DBCollection coll = null;
               	MongoClient mongoClient = new MongoClient("127.0.0.1",27017);
               	DB db = mongoClient.getDB("socialqsandans");
               	coll = db.getCollection("profile");
               	BasicDBObject wheresearch = new BasicDBObject();
               	wheresearch.put("firstname",name);
               	DBCursor cursor = coll.find(wheresearch);

%>
                <tr><%
               while(cursor.hasNext())
               	{
               		DBObject object = cursor.next();
      
               		%>
               
 <td><%=object.get("professional")%></td>
         <td>	
         <img src="gallery/<%=object.get("image")%>" alt="" width="70" height="70" style="margin-left:40px; margin-top: 20px;"/> </td>    		
             
        		
               		<%
               		
               	}
               	
               }
               catch(Exception e)
               {
               	e.printStackTrace();
               }
               
               
               %>
                                 
                             <form action="search1.jsp" name="f" method="get" onsubmit= "return validation()">
			<table>
		<th>  <font size="25px" color="red">
                  Q</font><font size="5px" color="red">uestion-</font><font size="25px" color="red"> c</font><font size="5px" color="red">ategorizing:</font> </th>
		
		     <tr>
	<td> <font color="FF0099" size="6"> S <font color="blue" size="6">E <font color="green" size="6">A <font color="red" size="6">R <font color="blue" size="6">C <font color="green" size="6">H:  </font> </th>			<td> <input id="text1" type="text" class="tex1" name="search"  placeholder="enter the category..."/></td>
			</tr>
 			             
			<td> <input type="submit" class="myButton" value="submit" style="margin-left: 100px; margin-top: 30px;"> </td>
			<td> <input type="reset" class="myButton" value="cancel" style="margin-left: 100px; margin-top: 30px;"> </td>
	
			</table>
			</form>
          <img src="img/animat-search-color (2).gif" alt="" style="margin-left: 500px; margin-top: -400px; width: 200px; height: 200px;">  
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