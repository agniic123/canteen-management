
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.util.Date"%>
<%@page import="com.rajan.dao.UserService"%>
<%@page import="com.rajan.model.registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.rajan.constants.GlobalConstants"%>
<%
registration login =(registration) session.getAttribute(GlobalConstants.USER);
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

	
	
     <% 
	if(login.getId()!=null){
	session.invalidate();
	response.sendRedirect("studentlogin.jsp");
	
	%>
	  
	<%
	}
	%>
 
</body></html>
