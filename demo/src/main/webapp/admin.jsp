<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<!-- This is Admin Login, Where Admin enter username and password in respective columns and after submitting it will process in UserController -->
</head>
<body>
<center>
    <!-- form tag is used to get input and send value to respective bean class getters through modelAttribute -->
	<form:form action="${pageContext.request.contextPath}/homepage" modelAttribute="adminBean" method="post">
		<h2>ADMIN LOGIN</h2>
		<table>
		<tr>
		<td>UserName</td>
		<!-- Input for Username and store in AdminBean -->
		<td><form:input path="username"></form:input></td>
		</tr>
		<tr>
		<td>Password</td>
		<!-- Input for Password and store in AdminBean -->
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