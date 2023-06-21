<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="Home.html" %>  
<body>

  <div class="panel" id="contactus">
                <h1>General Message</h1>
                  <div class="cleaner_h10"></div>
				
                <div class="col_380 float_l">
                  <div id="contact_form">
                    <form method="post" name="contact" action="admingeneralcomaction.jsp">
            
                      <label for="text"></label>
                      <textarea id="text" name="message" rows="0" cols="0" class="required"></textarea>
                      <div class="cleaner_h10"></div>
                      <input type="submit" value="SENT" id="E" name="submit"class="button" />
                    
                    </form>
                  </div>
                </div>
				<br>
				<br>
</body>
</html>