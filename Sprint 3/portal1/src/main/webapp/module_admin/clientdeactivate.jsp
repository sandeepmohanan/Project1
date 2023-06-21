<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
     <jsp:useBean id="CourseBean" class="courseAdministration.courseAdministrationAction" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String id=request.getParameter("id");
int x=CourseBean.deactivateAccount(id);
if(x>0)
{

response.sendRedirect("getclient.jsp");
}
else
{
	out.println("registration NOT Completed.Please contact administrator");
}

%>
</body>
</html>