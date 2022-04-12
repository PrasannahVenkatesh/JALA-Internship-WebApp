<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<center>
<!-- message is send from UserController and its displayed in Webpage and added link to view studentdetails -->
<h3>${message}</h3>
<a href="${pageContext.request.contextPath}/actionhome">Home</a>
</center>
</body>
</html>