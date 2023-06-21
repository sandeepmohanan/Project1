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

list=CourseBean.viewclient();
%>    <table class="center"  border=1>
  <tr>
    <th></th>
    <th>Registration Number</th> 
    <th>Name</th>
    <th>Contact Number</th>
    <th>Street Name</th> 
    <th>Town</th>
    <th>City</th>
    <th>Country</th> 
    <th>Email</th>
    <th>Deactivate Account</th>
   
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
    	<td><a href="clientdeactivate.jsp?id=<%=x[1]%>" accesskey="1" title="">Deactivate</a></td>
    	</tr>
    	
    	 

				
    	
    	 <%
}   %></table>



</body>
</html>
