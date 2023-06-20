<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Home.html" %>  
	<h3><p align="">Assessment Deatils</p></h3>
<table class="center">
			<tr><td>Title</td><td><input type="text" name="username" id="username"/></td></tr>
			<tr><td>Description</td><td><input type="text" name="password" id="password"/></td></tr>
			<tr><td>Questions</td><td><input type="submit" name="upload"  value="upload"/></td></tr>
			<tr><td>Marking Instruction</td><td><input type="submit" name="upload" value="upload" /></td></tr>
			<tr><td>Additional Instructions</td><td><input type="submit" name="upload" value="upload" /></td></tr>
				<tr><td>DeadlineDate</td><td><input type="date" id="deadline" name="deadline"></td></tr>
				<tr><td>comment</td><td> <textarea id="text" name="text" rows="10" cols="40" class="required"></textarea></td></tr>
			<tr><td></td><td></td></tr>
			<tr><td></td><td></td></tr>
			</table>
			<a href="module_admin/addasigncourse.jsp" class="button">ADD</a>
</body>
</html>