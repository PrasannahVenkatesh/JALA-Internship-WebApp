<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
<!-- This is JobSeeker Login, Where JobSeeker enter username/mobilenumber and password in respective columns and after submitting it will process in UserController -->
</head>
<body>
<center>
<h2>Welcome!!!!</h2><br>
<h4>${message}</h4>
<!-- form tag is used to get input and send value to respective bean class getters through modelAttribute -->
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