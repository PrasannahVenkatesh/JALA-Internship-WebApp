<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleted Student</title>
</head>
<body>
<center>
<!-- message is send from UserController and its displayed in Webpage and added link to view studentdetails -->
<h2>${message}</h2><br>
<a href="${pageContext.request.contextPath}/demostudentdetails0">Click to View Student Details</a>
</center>
</body>
</html>