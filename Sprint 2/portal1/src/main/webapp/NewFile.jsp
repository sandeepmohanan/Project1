<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
 
Connection conn = null;

try {
	Statement statement = null;
	ResultSet resultSet = null;
	
	%>
	<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>

	</tr>
	<tr bgcolor="#A52A2A">
	
	<td><b>user_id</b></td>
	<td><b>Password</b></td>

	</tr>
	<%
    String dbURL = "jdbc:sqlserver://localhost\\SQLEXPRESS;encrypt=false";
    String user = "sandeep";
    String pass = "sandeep";
    conn = DriverManager.getConnection(dbURL, user, pass);
    if (conn != null) {
        DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
        System.out.println("Driver name: " + dm.getDriverName());
        System.out.println("Driver version: " + dm.getDriverVersion());
        System.out.println("Product name: " + dm.getDatabaseProductName());
        System.out.println("Product version: " + dm.getDatabaseProductVersion());
    }

    statement=conn.createStatement();
    String sql ="SELECT * FROM login";

    resultSet = statement.executeQuery(sql);
    while(resultSet.next()){
    %>
    <tr bgcolor="#DEB887">

    <td><%=resultSet.getString("username") %></td>
    <td><%=resultSet.getString("password") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}

%>
</table><%


  
    
%>
</body>
</html>