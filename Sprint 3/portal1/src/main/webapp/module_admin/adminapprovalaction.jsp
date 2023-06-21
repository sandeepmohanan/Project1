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
</head>
<body>
<%

int id=Integer.parseInt(request.getParameter("id"));
String type=request.getParameter("type");
if(type.equals("1"))
{
	int x=loginBean.ApproveRegistration(id);
	if(x>0)
	{
	out.println("aregistration Completed");
	response.sendRedirect("adminapproval.jsp");
	}
	else
	{
		out.println("registration NOT Completed.Please contact administrator");
	}
}
else
	if(type.equals("2"))
	{
		int y=loginBean.RemoveRegistration(id);
		if(y>0)
		{
		out.println("removed");
		response.sendRedirect("adminapproval.jsp");
		}
		else
		{
			out.println("not remmoved");
		}
	}
	else
	{
		out.println("removel n NOT Completed.Please contact administrator");
	}
%>
</body>
</html>