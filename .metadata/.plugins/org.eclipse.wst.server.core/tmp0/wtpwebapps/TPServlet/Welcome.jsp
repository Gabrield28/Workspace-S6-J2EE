<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome home</title>
</head>
<body>
	<c:if test = "${!empty sessionScope.login && !empty sessionScope.password}">
	<p>Bienvenue ${ sessionScope.login} </p>
	</c:if>
</body>
</html>