<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<center>
	<form:form action="${pageContext.request.contextPath}/homepage" modelAttribute="adminBean" method="post">
		<h2>ADMIN LOGIN</h2>
		<table>
		<tr>
		<td>UserName</td>
		<td><form:input path="username"></form:input></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><form:password path="password"></form:password></td>
		</tr>
		<tr>
		<td><input type="submit" placeholder="Login"></td>
		</tr>
		</table>
	</form:form>
</center>
</body>
</html>