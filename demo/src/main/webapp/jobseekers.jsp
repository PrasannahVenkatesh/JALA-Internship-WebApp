<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>${message}</h1>
<a href="${pageContext.request.contextPath}/demoforjobseekers">Click for Demo Application</a><br><br>
<a href="${pageContext.request.contextPath}/updatefromjobseekers">Update Details</a><br><br>
<a href="${pageContext.request.contextPath}/login">Click to LogOut</a>
</center>
</body>
</html>