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
String cid=request.getParameter("cid");
String subid=request.getParameter("sid");
String cname=request.getParameter("cname");
int x=courseBean.addnewSubject(cid,subid,cname);
out.println("action ="+x+cid+subid+cname);
if(x>0)
{response.sendRedirect("Coursedetailaction.jsp?id="+cid);

}
else
{
	
	out.println("action NOT Completed.Please contact administrator");
	}

%>

</body>
</html>