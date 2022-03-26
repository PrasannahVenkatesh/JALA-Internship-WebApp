<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.time.LocalDate,java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
</head>
<body>
<!-- Using LocalDate library to restrict the dates and timespan for our needs. Its has many inbuilt methods to perform desired actions. 
 minusDays method -> Only above 18 years student only can apply 
 plusDays method-> THe student/jobseekers are able to access the portal for max of 90 days from today/applying date -->
<% LocalDate today = LocalDate.now();
LocalDate maxdate = today.minusDays(6570); 
LocalDate avaldate = today.plusDays(90);
%>
<center>
<form:form action="${pageContext.request.contextPath}/edited" modelAttribute="studentbean" method="post">
		<!-- Getting values from the UserController and using forEach method in form tag to display already entered values for easy updation -->
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
			<td>Set Password:</td>
			<td><form:input path="password" value="${sb.password}"></form:input></td>
			<td><form:errors path="password" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Gender:</td>
			<td><form:input path="gender" value="${sb.gender}"></form:input></td>
			<td><form:errors path="gender" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>DOB:</td>
			<td><form:input path="date" type="date" value="${sb.date}" max="<%= maxdate %>"></form:input></td>
			<td><form:errors path="date" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Qualification:</td>
			<td><form:select path="qualification" value="${sb.qualification}">
				<form:option value="B.Tech" label="B.Tech"></form:option>
				<form:option value="MCA" label="MCA"></form:option>
				<form:option value="Graduation" label="Graduation"></form:option>
				<form:option value="Post-Graduation" label="Post-Graduation"></form:option>
				<form:option value="MBA" label="MBA"></form:option>
				<form:option value="Others" label="Others"></form:option>
				</form:select></td>
			<td><form:errors path="qualification" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Skils:</td>
			<td><form:input path="skills" value="${sb.skills}"></form:input></td>
			<td><form:errors path="skills" cssClass="error"></form:errors>
			</tr>	
			<tr>
			<td>Active till Date:</td>
			<td><form:input path="activeTill" type="date" value="${sb.activeTill}" max="<%= avaldate %>" min="<%= today %>" ></form:input></td>
			<td><form:errors path="activeTill" cssClass="error"></form:errors>
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