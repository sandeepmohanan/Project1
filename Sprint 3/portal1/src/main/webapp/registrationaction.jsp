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
<body><% 
String regno=request.getParameter("regno");
String type=request.getParameter("type");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String street_no=request.getParameter("street_no");
String street_name=request.getParameter("street_name");
String town=request.getParameter("town");
String country=request.getParameter("country");
String password=request.getParameter("password");

int status=loginBean.newuserRegistration(regno,name,email,contact,street_no,street_name,town,country,password,type);
out.println(status);
if(status>0){
	response.sendRedirect("SuccessRegistraionPage.jsp");
}
%>
</body>
</html>