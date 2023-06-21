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
	<h3><p align="">All Assessment </p></h3>
	
	
			
		<%
 ArrayList list  = new ArrayList();

list=courseBean.getAssessments("IT101");
%>    <table class="center"  border=1>
  <tr>
    <th></th>
    <th>Question</th> 
    <th>Marking Instruction</th>
    <th>Additional Instruction</th>
  
  
   <th>Comments</th>
  
   <th>Deadline</th>
   
   <th>Created Date</th>
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
		
			<a href="addNewAssessment.jsp" class="button">ADD New Assessment</a>
</body>
</html>