<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:useBean id="CourseBean" class="courseAdministration.courseAdministrationAction" scope="session"/>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><font color="red"><b>
<%@ include file="Home.html" %>  
<%
String message=request.getParameter("message");

int x=CourseBean.addnewmessage(message);
System.out.println("action ="+x);
if(x>0)
{
	out.println("Your Message Successfully Delivered to All Clients.................................!");
}
else
{
	
	out.println("action NOT Completed.Please contact administrator");
	}
%></b></font>
</body>
</html>