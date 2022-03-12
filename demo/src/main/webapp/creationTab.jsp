<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Student Creation </title>
<style type="text/css">
.error{
color:red;
font-style:italic;
}
</style>
</head>
<body>
<center>
	<h2>Student Creation Form</h2><br>
	<form:form action="${pageContext.request.contextPath}/success" modelAttribute="studentbean" method="post">
		<table border="1">
			<tr>
			<td>First Name:</td>
			<td><form:input path="firstName" ></form:input></td>
			<td><form:errors path="firstName" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Last Name:</td>
			<td><form:input path="lastName"></form:input></td>
			<td><form:errors path="lastName" cssClass="error"></form:errors>
			</tr>	
			<tr>
			<td>Mobile Number:</td>
			<td><form:input path="mobileNumber"></form:input></td>
			<td><form:errors path="mobileNumber" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Email ID:</td>
			<td><form:input path="emailId"></form:input></td>
			<td><form:errors path="emailId" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Gender:</td>
			<td><form:radiobutton path="gender" value="Male" label="Male"></form:radiobutton></td>
			<td><form:radiobutton path="gender" value="Female" label="Female"></form:radiobutton></td>
			<td><form:errors path="gender" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>DOB:</td>
			<td><form:input path="date" type="date"></form:input></td>
			<td><form:errors path="date" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Qualification:</td>
			<td><form:select path="qualification" value="---">
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
			<td><form:checkbox path="skills" value="JAVA,.Net and Python" label="JAVA,.Net and Python"></form:checkbox></td>
			<td><form:checkbox path="skills" value="Database            " label="Database"/></td>
			<td><form:errors path="skills" cssClass="error"></form:errors>
			</tr>
			<tr>
			<td>Upload Image:</td>
			<td><form:input path="image" type="file"></form:input></td>
			<td><form:errors path="image" cssClass="error"></form:errors>
			</tr>	
			<tr>
			<td>Description:</td>
			<td><form:textarea path="description" maxlength="50"></form:textarea></td>
			</tr>
		</table>
		<input type="submit" label="Submit"></input>
	</form:form>
</center>
</body>
</html>