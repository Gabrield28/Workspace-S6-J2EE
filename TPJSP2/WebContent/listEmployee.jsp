<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="UTF-8">
<title>List Employee</title>
</head>
<body>
<%@page import="model.User" %>
<%@page import="model.Employee" %>
<%@page import="java.util.*" %>

<form method="get" action="EmployeeListServlet">

<%! ArrayList<Employee> emplst; %>
<%
	emplst=(ArrayList<Employee>) session.getAttribute("emplst");
%>
</form action="LoginServlet" method="post" class="col-3 justify-content-center">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Firstname</th>
      <th scope="col">Lastname</th>
      <th scope="col">Role</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="emp" items="${sessionScope['emplst']}">
    	<tr>
      		<td>${emp.firstname}</td>
      		<td>${emp.lastname}</td>
      		<td>${emp.role}</td>
    	</tr>
    </c:forEach>
  </tbody>
</table>

<form method="get" action="ListeServlet">

	<input type="submit" value="Add Employee" class="btn btn-primary"/> 

</form>



</body>
</html>