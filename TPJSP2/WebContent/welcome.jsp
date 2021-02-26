<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Welcome !</title>
</head>
<body>
<%@page import="model.User" %>
<%@page import="model.Employee" %>
<%@page import="java.util.*" %>

<%! User userBean; %>
<%
	userBean = (User)session.getAttribute("user");
%>
Bonjour
<%= userBean.getEmp().getFirstname() %>
<%= userBean.getEmp().getLastname() %>
</br>
<jsp:useBean id="user" class="model.User" scope="session"></jsp:useBean>

	<label> Welcome 
	
		<jsp:getProperty name="user" property="emp"></jsp:getProperty> !
	
	</label>
	
	<div class="row center">
		
		<form method="get" action = "WelcomeServlet">
			
			<input type="submit" value="list employee" class="btn btn-primary"/>
		
		</form>
		
		<form method="post" action = "deconnexion.jsp">
			
			<input type="submit" value="Logout" class="btn btn-danger"/>
		
		</form>
		
		
	</div>
</body>
</html>