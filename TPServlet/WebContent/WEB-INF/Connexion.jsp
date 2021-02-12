<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page de connexion</title>
</head>
<body>
	<c:if test="${ !empty sessionScope.login && !empty sessionScope.password }">
        <p>Vous êtes ${ sessionScope.login } !</p>
    </c:if>
	<form method="post" action="connexion">
		<label for="login">Login :</label>
		<input type="text" name="login" id="login"/> 
		</br>
		<label for="password">Mot de passe :</label>
		<input type="text" name="password" id="password"/>
		</br>
		<input type="submit" value="Connect"/>
	</form>
</body>
</html>