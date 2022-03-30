<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.time.LocalDate,java.util.Date" %>
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
<!-- Using LocalDate library to restrict the dates and timespan for our needs. Its has many inbuilt methods to perform desired actions. 
 minusDays method -> Only above 18 years student only can apply 
 plusDays method-> THe student/jobseekers are able to access the portal for max of 90 days from today/applying date -->
<% LocalDate today = LocalDate.now();
LocalDate maxdate = today.minusDays(6570); 
LocalDate avaldate = today.plusDays(90); 
%>
<center>
	<h2>Student Creation Form</h2><br>
	<!-- Form tag is used to store the values in StudentBean by sending the bean "studentbean" to UserController through modelAttribute method and 
	storing the values is done by using path method inside form tag-->
	<form:form action="${pageContext.request.contextPath}/demosuccess" modelAttribute="studentbean" method="post">
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
			<!-- Setting restriction for DOB because non graduate students are not able to apply and its done by using max method in form tag -->
			<td><form:input path="date" type="date" max="<%= maxdate %>"></form:input></td>
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
			<td><form:checkbox path="skills" value="JAVA" label="JAVA"></form:checkbox></td>
			<td><form:checkbox path="skills" value="Database" label="Database"/></td>
			<td><form:checkbox path="skills" value=".Net" label=".Net"></form:checkbox></td>
			<td><form:checkbox path="skills" value="Python" label="Python"></form:checkbox></td>
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