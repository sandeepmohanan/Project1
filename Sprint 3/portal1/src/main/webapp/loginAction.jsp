<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="loginAction.validateLogin" %> 
     <jsp:useBean id="loginBean" class="loginAction.validateLogin" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String usergroup=loginBean.validateuserLogin(username,password);
out.println("lll"+usergroup);

if(usergroup.equals("admin"))
{
	response.sendRedirect("module_admin/adminLandingPage.jsp");
	}
else
	if(usergroup.equals("faculty"))
	{
		response.sendRedirect("module_faculty/FacultyLandingPage.jsp");
	}
	else
		if(usergroup.equals("student"))
		{
			response.sendRedirect("module_student/StudentLandingPage.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
%>
</body>
</html>