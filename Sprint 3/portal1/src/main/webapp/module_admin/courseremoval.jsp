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

int id=Integer.parseInt(request.getParameter("id"));
int x=CourseBean.removeCourse(id);
if(x>0)
{

response.sendRedirect("coursedetails.jsp");
}
else
{
	out.println("registration NOT Completed.Please contact administrator");
}

%>
</body>
</html>