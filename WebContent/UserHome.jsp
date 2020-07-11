<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Date"%>
<%@page import="com.rajan.constants.GlobalConstants"%>
<%@page import="com.rajan.model.registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rajan.dao.UserService"%>
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setHeader ("Expires", "0");
ArrayList<registration> cats = new UserService().getAllregistration();
registration login =(registration) session.getAttribute(GlobalConstants.USER);
login.equals(cats);
%> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>canteen Ordering System</title>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/mycss/navbar.css" rel="stylesheet" type="text/css" />
	<link href="assets/mycss/slideshow.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="sidenav">
    <a href=""> <%=new Date() %></a>
    <hr color="white" />
	<% 
	if(login.getId()!=null){
	%>
	<a href="ViewCategory.jsp">Place Order</a>
	  <a href="OrderStatus.jsp"> View Order Status </a>
	  <a href="ViewBill.jsp"> View Bill </a>
	  <a href="studentlogin.jsp"> Log Out </a>
	
	<%
	}
	%>
	 
	<%
	 
	%>
</div>

<div class="main">
  <div class="container">
    <div class="row">
      <div class="col-12">
      
        <div class="slideshow-container">        
		  <div class="mySlides fade">
  			<img src="assets/images/restaurant.png" style="width:100%" />
  			<div class="text">Ambience</div>
		  </div>
		  
		  <div class="mySlides fade">
		    <img src="assets/images/food.png" style="width:100%" />
		    <div class="text">Food</div>
		  </div>
		  
		  <div class="mySlides fade">
		    <img src="assets/images/bevereges.jpg" style="width:100%" />
		    <div class="text">Bevereges</div>		    
		  </div>		  
		</div>	
			
		<br/>			
		<div style="text-align:center">
 		  <span class="dot"></span> 
  		  <span class="dot"></span> 
  		  <span class="dot"></span> 
		</div>
		
		<% 
		
			
		if(login!=null ){
		%>
		
			<h2>Welcome to  Our canteen!<%%></h2>
		<%
		} else{
		%>
			<h2>Welcome back </h2>
		<%
		}
			
		
		%>	
				
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="assets/myjs/slideshow.js"></script>
</body>
</html>