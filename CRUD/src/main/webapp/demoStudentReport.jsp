<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Details</title>
<!-- In this file, we are displaying the records in database using data we got from UserController Class and adding user preference of update and delete record. 
 Here pop up is displayed if we want to update the data like ok or cancel, According to the user choice it will redirect to respective page and it is done 
 by using javascript. -->
<script>
var url = "http://localhost:8080/demostudentdetails0";
function remove(id){
	var s = confirm("Confirm Before Deleting Details");
	if(s==true){
		window.location="http://localhost:8080/demodeletestudent"+id;
	}
	else{
		window.location=url;
	}
}
function update(id){
	var s = confirm("Confirm Before Editing Details");
	if(s==true){
		window.location="http://localhost:8080/demoeditstudent"+id;
	}
	else{
		window.location=url;
	}
}
function search(){
	var s = document.getElementById("searchstudent").value;
	window.location="http://localhost:8080/demosearch"+s;
}

function page(){
	window.location="http://localhost:8080/demostudentdetail"+0;
}

function run(p){
var url ="http://localhost:8080/demostudentdetails";
window.location="http://localhost:8080/demostudentdetails"+p;
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

<form:form action="${pageContext.request.contextPath}/demostudentdetail" modelAttribute="pcb" method="POST">
<label>Select No.of Records per page</label>
<form:select path="count" value="" >
<form:option value="10" label="10"></form:option>
<form:option value="25" label="25"></form:option>
<form:option value="50" label="50"></form:option>
<form:option value="100" label="100"></form:option>
</form:select>
<input type="submit" value="View">
</form:form>
<br><br>
<c:forEach var="sb" items="${stubean}">
<table border="1">
<tr>
<td>Student ID</td><td>FirstName</td><td>LastName</td><td>Skills</td><td>MobileNumber</td>
</tr>
<tr>
<td>${sb.studentId}</td><td>${sb.firstName}</td><td>${sb.lastName}</td><td>${sb.skills}</td><td>${sb.mobileNumber}</td>
<!-- function calling while clicking the button -->
<td><button onclick="update(${sb.studentId})">Click to Edit</button></td>
<td><button onclick="remove(${sb.studentId})">Click to Delete</button></td>
</tr>
</table>
<br>
</c:forEach>
<c:forEach var="i" begin="0" end="${total}">
<button id="pageNo" onclick="run(${i})">${i+1}</button></td>
</c:forEach><br>
<a href="${pageContext.request.contextPath}/login">Home</a>
</center>
</body>
</html>