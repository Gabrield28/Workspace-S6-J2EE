<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<div class="container">

<form action="LoginServlet" method="post" class="col-3 justify-content-center" >
	<%
		if(request.getAttribute("msgError") != null){
	%>
	<div class="alert alert-danger" role="alert">
  		erreur : please enter your login & your password
	</div>
	<%
		}
	%>
  <div >
    <label class="form-label" >Email address</label>
    <input class="form-control" name="username">
    <div id="emailHelp" class="form-text">We'll never share your name or lastname with anoyone else.</div>
  </div>
  <div >
    <label class="form-label">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 </div>
</body>
</html>