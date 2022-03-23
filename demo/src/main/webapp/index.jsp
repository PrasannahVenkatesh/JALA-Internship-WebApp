<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
</head>
<body>
<center>
<h2>Welcome!!</h2><br>
<h4>${message}</h4>
<form:form action="${pageContext.request.contextPath}/jobseekers" modelAttribute="jobseeker" method="POST">
<table>
<tr>
<td>Enter MobileNumber: </td>
<td><form:input path="phoneNumber"/></td>
</tr>
<tr>
<td>Password: </td>
<td><form:password path="password"/></td>
</tr>
</table><br>
<input type="submit" label="Submit"></input>
</form:form>
<br><br>
<a href="${pageContext.request.contextPath}/admin">Click for ADMIN Login</a><br><br>
</center>
</body>
</html>