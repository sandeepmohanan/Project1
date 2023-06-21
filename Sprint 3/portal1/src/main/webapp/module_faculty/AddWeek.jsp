<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
table, td, th {
  
 
}

table {
  border-collapse: collapse;
  width: 50%;
}

td {
  text-align: center;
  
}
th{
  text-align: center;
   background: #ff8a0e;
   width: 20px;
   color: #ffffff;
}
</style>
</head>
<body>
<%@ include file="Home.html" %>  
	<%String subid=request.getParameter("subid"); %>
			<h3><p align="">Add Week</p></h3>
			<form action="addweekaction.jsp">
	<table  border="0"class="center">
	<tr  border="0" height="50"><th></th><th></th></tr>
	<tr><td>Course Group</td><td><input type="text"  class="input_field" value=<%=subid%> name="sid" /></td></tr>
			
			<tr><td>Enter Week</td><td> <input type="text" class="input_field" name="wname" /></td></tr>
			
			</table>
			
			<input type="submit"   class="button" value="ADD">
			</form>
</body>
</html>