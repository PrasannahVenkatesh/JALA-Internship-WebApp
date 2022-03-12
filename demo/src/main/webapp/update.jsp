<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
</head>
<body>
<center>
<form:form action="${pageContext.request.contextPath}/edited" modelAttribute="studentbean" method="post">
		<c:forEach var="sb" items="${stbean}">
		<h1>Update the Student Details of ID: ${sb.studentId}</h1>
		<table border="1">
			<tr>
			<td>First Name:</td>
			<td><form:input path="firstName" value="${sb.firstName}"></form:input></td>
			<td><form:errors path="firstName" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Last Name:</td>
			<td><form:input path="lastName" value="${sb.lastName}"></form:input></td>
			<td><form:errors path="lastName" cssClass="error"></form:errors>
			</tr>	
			<tr>
			<td>Mobile Number:</td>
			<td><form:input path="mobileNumber" value="${sb.mobileNumber}"></form:input></td>
			<td><form:errors path="mobileNumber" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Email ID:</td>
			<td><form:input path="emailId" value="${sb.emailId}"></form:input></td>
			<td><form:errors path="emailId" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Gender:</td>
			<td><form:input path="gender" value="${sb.gender}"></form:input></td>
			<td><form:errors path="gender" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>DOB:</td>
			<td><form:input path="date" type="date" value="${sb.date}"></form:input></td>
			<td><form:errors path="date" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Qualification:</td>
			<td><form:input path="qualification" value="${sb.qualification}"></form:input></td>
			<td><form:errors path="qualification" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Skils:</td>
			<td><form:input path="skills" value="${sb.skills}"></form:input></td>
			<td><form:errors path="skills" cssClass="error"></form:errors>
			</tr>	
			<tr>
			<td>Description:</td>
			<td><form:textarea path="description" maxlength="50" placeholder="${sb.description}"></form:textarea></td>
			</tr>
		</table>
		<br>
		<input type="submit" label="Submit"></input>
		</c:forEach>
	</form:form>
</center>
</body>
</html>