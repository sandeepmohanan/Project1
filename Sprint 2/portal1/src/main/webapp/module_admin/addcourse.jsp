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
	
			<h3><p align="">Active Courses</p></h3>
	<table  border="2"class="center">
	
	
			<tr><td>Course ID</td><td> <input type="text" class="input_field" name="cid" /></td></tr>
			<tr><td>Course Group</td><td><input type="text" class="input_field" name="cgroup" /></td></tr>
			<tr><td>CourseName</td><td><input type="text" class="input_field" name="cname" /></td></tr>
			<tr><td>Credit</td><td><input type="text" class="input_field" name="ccredit" /></td></tr>
		<tr><td>Details</td><td><input type="text" class="input_field" name="cdetails" /></td></td></tr>
		
			</table>
			<a href="module_admin/cursedetails.jsp" class="button">ADD</a>  
			
</body>
</html>