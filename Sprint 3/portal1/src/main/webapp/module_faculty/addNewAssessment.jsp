<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <jsp:useBean id="courseBean" class="courseAdministration.courseAdministrationAction" scope="session"/>

     <%@ page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, td, th {
  border: 1px solid black;
 
}

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  text-align: center;
  
}
th{
  text-align: center;
   background: #ff8a0e;
   width: 40px;
   color: #ffffff;
}
</style>
</head>

<body>
<%@ include file="Home.html" %>  

<br>
		<h3><p align="">Add Assessment </p></h3>
<table class="center">
			<tr><td>Title</td><td><input type="text" name="title" id="username"/></td></tr>
			<tr><td>Description</td><td><input type="text" name="description" id="password"/></td></tr>
			<tr><td>Questions</td><td><input type="submit" name="question"  value="upload1"/></td></tr>
			<tr><td>Marking Instruction</td><td><input type="submit" name="making" value="upload2" /></td></tr>
			<tr><td>Additional Instructions</td><td><input type="submit" name="upload" value="upload3" /></td></tr>
				<tr><td>DeadlineDate</td><td><input type="date" id="deadline" name="deadline"></td></tr>
				<tr><td>comment</td><td> <textarea id="text" name="comment" rows="10" cols="40" class="required"></textarea></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			</table>
			<a href="addNewAssessmentaction.jsp" class="button">ADD New Assessment</a>
</body>
</html>