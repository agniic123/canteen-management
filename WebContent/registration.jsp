
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.Date"%>
<%@page import="com.rajan.dao.UserService"%>
<%@page import="com.rajan.model.registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rajan.constants.GlobalConstants"%>
<%

	response.setHeader("Cache-Control","no-store");
	response.setHeader("Pragma","no-cache");
	response.setHeader ("Expires", "0"); 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" %>
<%@ page session="true" %>
<html>
<head>
<title>Register New Applicant</title>
  <title>Hotel Ordering System</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/mycss/card.css" rel="stylesheet" type="text/css" />
 
 
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link disabled">Home</a>
    	</li>
       
    	<li class="nav-item">
      	  <a class="nav-link" href="studentlogin.jsp">student Login</a>
    	</li>
		  <li class="nav-item">
      	  <a class="nav-link" href="registration.jsp">student ragistration</a>
    	</li>

  	  </ul>
  	  <ul class="navbar-nav ml-auto">
    	<li class="nav-item">
      	  <a class="nav-link" href="ContactUs.html">Contact Us</a>
    	</li>
  	  </ul>
    </nav>
  

<table width="900" border="0" align="center">
 
<tr>
	<td colspan="2" >
	</td>
</tr>
<tr>
	<td width="150" valign="top">

	</td>  
<td width ="750">
 <center>
<table  border="0" align="top" width=100%>
	
	<form action="reglogin?action1=registration"  method="post">
		    <%
			  if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
				  out.write("<h3>" + GlobalConstants.MESSAGE + "</h3>");
				  GlobalConstants.MESSAGE = "";
			  }
		    %>
	  <div class="container">
  	  <div class="row">
  	  
    	<div class="col-12">
	  	  <center>  
	    	<img src="assets/images/Top-logo.png" style="max-width: 100%" />		    
	    	<h1>REGISTRATION PAGE</h1>  	
	  	    <br/> 
		    <br/>     		    
	  	  </center>
		</div>	
	<tr>
	<td bgcolor ='#C58DC4' colspan='4' align=center height=20><b>Contact Information</b></td>
	</tr>
	<tr><td width=150 >Student Id</td>
	<td align='left' ><input type='text' class="form-control" name='id' id="id"size ='10' value='' required/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr>
	<td>Name</td><td>
	<input type='text' class="form-control" name="Name" id="Name" 'size ='40' value=''required /></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
<tr>
	<td>Password</td><td>
	<input type="password" class="form-control" name="pass" id="pass " value='' required />
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	</tr>
	<tr>
	<td>Mobile</td>
	<td><input type='text' class="form-control" name='num' id="num" size ='12' value=''required/></td>
	<td>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr>
	<td colspan=4 align=center><input type='submit'  class="btn btn-primary" name='submit' id='submit' size ='10' value='Signup'/></td>
	</tr>
</table>
 </center>
</body></html>
