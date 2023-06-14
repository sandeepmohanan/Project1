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
<select name="language" id="language">
 <option value="javascript">Select the Enrollment</option>
  <option value="javascript">SE01A</option>
  <option value="python">SE01B</option>
  <option value="c++">SE01C</option>
  <option value="java">SE01D</option>
</select>
<select name="language" id="language">
 <option value="javascript">Select Grade</option>
  <option value="javascript">A</option>
  <option value="python">A+</option>
  <option value="c++">B</option>
  <option value="java">B+</option>
  <option value="c++">C</option>
  <option value="java">C+</option>
  <option value="java">Resubmission</option>
  <option value="java">D</option>
</select>

<br>
 <a href="GradeEntry.jsp" class="button">ADD</a>	
</body>
</html>