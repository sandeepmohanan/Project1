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
	 <tr><th>Course ID</th><th>Course Group</th><th>CourseName</th><th>Credit</th><th>Details</th><th></th></tr>
	
			<tr><td>IT101</td><td>IT</td><td>PostGraduate Diploma</td><td>100</td><td><a href="individualcoursedetail.jsp">Details</a></td><td><a href="">Remove</a></td></tr>
			<tr><td>IT102</td><td>IT</td><td>Bachlor Certificate</td><td>120</td><td><a href="">Details</a></td><td><a href="">Remove</a></td></tr>
			<tr><td>M101</td><td>Biology</td><td>Postgraduate Nursing</td><td>140</td><td><a href="">Details</a></td><td><a href="">Remove</a></td></tr>
			<tr><td>T101</td><td>Trade</td><td>Plumbing</td><td>100</td><td><a href="">Details</a></td><td><a href="">Remove</a></td></tr>
		
			</table>
			<a href="addcourse.jsp" class="button">ADD NEW COURSE</a>  
			
</body>
</html>