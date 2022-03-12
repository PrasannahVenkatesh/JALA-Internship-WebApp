<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Student Creation </title>
</head>
<body>
<center>
	<form:form action="success" modelAttribute="studentbean">
		<table>
			<tr>
			<td>First Name:</td>
			<td><form:input path="firstName"></form:input></td>
			</tr>
			<tr>
			<td>Last Name:</td>
			<td><form:input path="lastName"></form:input></td>
			</tr>	
			<tr>
			<td>Mobile Number:</td>
			<td><form:input path="mobileNumber"></form:input></td>
			</tr>
			<tr>
			<td>Email ID:</td>
			<td><form:input path="emailId"></form:input></td>
			</tr>
			<tr>
			<td>Gender:</td>
			<td><form:radiobutton path="gender" value="Male" label="Male"></form:radiobutton></td>
			<td><form:radiobutton path="gender" value="Female" label="Female"></form:radiobutton></td>
			</tr>
			<tr>
			<td>DOB:</td>
			<td><form:input path="date" value="${<input type="Date"/> }></form:input></td>
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
			</tr>
			<tr>
			<td>Skils:</td>
			<td><form:checkbox path="skill" value="JAVA,.Net and Python" label="JAVA,.Net and Pyhton"></form:checkbox></td>
			<td><form:checkbox path="skill" value="Python" label="Python"/></td>
			</tr>
			<tr>
			<td>Upload Image:</td>
			<td><form:input path="image" value="${<input type="file"/> }></form:input></td>
			</tr>	
			<tr>
			<td>Description:</td>
			<td><form:input path="description"></form:input></td>
			</tr>
		</table>
		<input type="button" label="Submit"></input>
	</form:form>
</center>
</body>
</html>