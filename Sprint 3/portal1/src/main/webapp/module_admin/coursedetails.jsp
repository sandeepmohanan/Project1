<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="loginAction.validateLogin" %> 
     <%@ page import="java.util.ArrayList" %> 
    
     <jsp:useBean id="loginBean" class="loginAction.validateLogin" scope="session"/>
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
	
			<h3><p align="">Active Courses</p></h3>

			
			
			
			
		<%
 ArrayList list  = new ArrayList();

list=loginBean.getCourses();
%>    <table class="center"  border=1>
  <tr>
    <th></th>
    <th>Course Registration</th> 
    <th>Course Group</th>
    <th>Course Name</th>
    <th>Credits</th> 
    <th>Summary</th>
  <th></th>
   <th></th>
 
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
    	<td>
					<a href="Coursedetailaction.jsp?id=<%=x[1]%>&type=1" accesskey="1" title="">Details</a></li>
				
    	
    	</td>
    	
    	<td><a href="courseremoval.jsp?id=<%=x[0]%>&type=2" accesskey="1" title="">Remove</a></td>
    	</tr>
    	
    	 

				
    	
    	 <%
}   %></table>	
<br>

			<a href="addcourse.jsp" class="button">ADD NEW COURSE</a>  
			
</body>
</html>