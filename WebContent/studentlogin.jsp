<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.Date"%>
<%@page import="com.rajan.constants.GlobalConstants"%>
<%@page import="com.rajan.model.registration"%>

<%

response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setHeader ("Expires", "0"); //prevents caching at the proxy server
%> 
<%@page import="com.rajan.constants.GlobalConstants"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Login</title>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.html">Home</a>
    	</li>
        <li class="nav-item">
          <a class="nav-link disabled">Cook Login</a>
    	</li>
    	<li class="nav-item">
      	  <a class="nav-link disabled">student Login</a>
    	</li>
  	  </ul>
  	  <ul class="navbar-nav ml-auto">
    	<li class="nav-item">
      	  <a class="nav-link" href="ContactUs.html">Contact Us</a>
    	</li>
  	  </ul>
    </nav>
    
    <div class="container">
  	  <div class="row">
  	  
    	<div class="col-12">
	  	  <center>  
	    	<img src="assets/images/Top-logo.png" style="max-width: 100%" />		    
	    	<h1> student Login </h1>  	
	  	    <br/> 
		    <br/>     		    
	  	  </center>
		</div>			
		<div class="col-12">
		  <form action="reglogin?action1=userlogin" method="post">
		     <%
			  if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
				  out.write("<h3>" + GlobalConstants.MESSAGE + "</h3>");
				  GlobalConstants.MESSAGE = "";
			  }
		    %>
  		    <div class="form-group">
    		  <label for="collageid">Student Id</label>
    		  <input type="text" class="form-control" name="id" id="id" size ='20' value='' required />
            </div>
  		    <div class="form-group">
    		  <label for="pwd">Password:</label>
    		  <input type="password" class="form-control" name="pass" id="pass" value='' required />
  		    </div>
  		  
  		    <button type="submit" class="btn btn-primary">Login</button>
		  </form>
	    </div> 	
	    	  	
  	  </div>
	</div>    
	
	
</body>
</html>