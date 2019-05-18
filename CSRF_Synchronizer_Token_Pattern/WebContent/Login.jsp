<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body bgcolor="#ADD8E6">

	<h1 style="color:#00008b" align="center">Login page</h1>
	<br/>
	<form method="post" action="LoginController" >
		<div align="center"><label>Username : </label><input type="text" name="username" /> </div>
		<div>&nbsp</div>
		<div align="center"><label>Password&nbsp&nbsp: </label><input type="password" name="password"/></div>
		<br/>
		<div>&nbsp</div>
		<c:if test="${not empty sessionScope.invalidCredentials}">
			<div align="center" id="message" style="color:red;">The username or password you entered is incorrect!</div><br/>
		</c:if>
		<div align="center">
		<input type="submit" style="background-color:blue;color:white;width:100px;height:30px;border:none;border-radius:5px" value="Login">
	</div>
	</form>
</body>
</html>