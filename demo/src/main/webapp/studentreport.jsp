<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<script>
function remove(){
	var s = confirm("Confirm Before Deleting Details");
	if(s==true){
		window.location="http://localhost:8080/deletestudent"+id;
	}
	else{
		window.location="http://localhost:8080/studentdetails";
	}
}
function update(id){
	var s = confirm("Confirm Before Editing Details");
	if(s==true){
		window.location="http://localhost:8080/editstudent"+id;
	}
	else{
		window.location="http://localhost:8080/studentdetails";
	}
}
function search(){
	var s = document.getElementById("searchstudent").value;
	window.location="http://localhost:8080/search"+s;
}
</script>
</head>
<body>
<center>
<h2>Enrolled Student Details</h2><br>
<label>Enter Name or MobileNumber to Search</label>
<input type="text" id="searchstudent" >
<button onclick="search()">Search</button>
<br><br>
<c:forEach var="sb" items="${stubean}">
<table border="1">
<tr>
<td>Student ID</td><td>FirstName</td><td>LastName</td><td>Skills</td><td>MobileNumber</td>
</tr>
<tr>
<td>${sb.studentId}</td><td>${sb.firstName}</td><td>${sb.lastName}</td><td>${sb.skills}</td><td>${sb.mobileNumber}</td>
<td><button onclick="update(${sb.studentId})">Click to Edit</button></td>
<td><button onclick="remove(${sb.studentId})">Click to Delete</button></td>
</tr>
</table>
<br>
</c:forEach><br>
<a href="${pageContext.request.contextPath}/adminhome">Home</a>
</center>
</body>
</html>