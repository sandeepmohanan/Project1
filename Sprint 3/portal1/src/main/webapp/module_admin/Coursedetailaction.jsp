<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="loginAction.validateLogin" %> 
     <%@ page import="java.util.ArrayList" %> 
    
     <jsp:useBean id="CourseBean" class="courseAdministration.courseAdministrationAction" scope="session"/>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
<body>
<%@ include file="Home.html" %> 

 
<%
 ArrayList list  = new ArrayList();
String id=request.getParameter("id");
list=CourseBean.getCoursesubject(id);
%>    <table class="center"  border=1>
  <tr>
    <th>SerialNumber</th>
  
    <th>SubjectID</th>
    <th>Subject Name</th>
    <th>Date</th> 
    <th>Unique ID</th>
    
  </tr>
<%
for (int i = 0; i < list.size();i++) 
{ 	
	%>    <tr><%
    System.out.println(list.get(i)); 	
    String[] x=(String[])list.get(i);
 
    
    
    for (int j = 0; j <x.length ;j++) 
    { 
    	
    	if(j==0)
    	{
    		 %><td><% out.println(i+1); 	  %></td>
    	<%
    	}
    	else
    	{
    	 %><td><% out.println(x[j]); 	  %></td>
    	 <%  }
    	}
    %>
    	
    	
   
    	</tr>
    	
    	 

				
    	
    	 <%
}   %></table>


<br>

			<a href="addSubject.jsp?subid=<%=id%>" class="button">ADD NEW SUBJECT</a>  


</body>
</html>
