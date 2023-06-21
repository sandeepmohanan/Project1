<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
     <jsp:useBean id="loginBean" class="loginAction.validateLogin" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String cid=request.getParameter("cid");
String cgroup=request.getParameter("cgroup");
String cname=request.getParameter("cname");
String ccredit=request.getParameter("ccredit");
String cdetails=request.getParameter("cdetails");
out.println(cid+cgroup+cname+ccredit+cdetails);
int x=loginBean.addnewCourse(cid,cgroup,cname,ccredit,cdetails);
System.out.println("action ="+x);
if(x>0)
{
	response.sendRedirect("coursedetails.jsp");
}
else
{
	
	out.println("action NOT Completed.Please contact administrator");
	}

%>

</body>
</html>