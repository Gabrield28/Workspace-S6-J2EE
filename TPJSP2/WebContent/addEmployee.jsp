<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add an Employee</title>
</head>
<body>
<form action="AddEmployeeServlet" method="post" class="col-3 justify-content-center">
<%
		if(request.getAttribute("msgError") != null){
	%>
	<div class="alert alert-danger" role="alert">
  		erreur : please enter valid firstname, lastname and role
	</div>
	<%
		}
	%>
  <div >
    <label class="form-label" >Firstname</label>
    <input class="form-control" name="firstname">
  </div>
  <div >
    <label class="form-label" >Lastname</label>
    <input class="form-control" name="lastname">
  </div>
  <div >
    <label class="form-label" >Role</label>
    <input class="form-control" name="role">
  </div>
  <button type="submit" class="btn btn-primary">Add</button>

</form>


</body>
</html>