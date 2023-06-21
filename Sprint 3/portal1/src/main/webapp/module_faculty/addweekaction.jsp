<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
     <jsp:useBean id="courseBean" class="courseAdministration.courseAdministrationAction" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String subid=request.getParameter("sid");
String wname=request.getParameter("wname");
int x=courseBean.addWeek(subid,wname);

if(x>0)
{response.sendRedirect("WeekMaterial.jsp?id="+subid);

}
else
{
	
	out.println("action NOT Completed.Please contact administrator");
	}

%>

</body>
</html>