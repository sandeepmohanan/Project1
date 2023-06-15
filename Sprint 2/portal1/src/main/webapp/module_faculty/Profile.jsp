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

	<div id="page-wrapper">
  <div class="panel" id="contactus">
                <h1>Contact Information</h1>
                <p>Duis vel est eu velit eleifend volutpat non et purus. Pellentesque tellus nulla, suscipit et fringilla vitae, sodales ultricies dolor.</p>
                <div class="cleaner_h10"></div>
				
                <div class="col_380 float_l">
                  <div id="contact_form">
                    <form method="post" name="contact" action="#">
                      <label for="author">Name:</label>
                      <input type="text" maxlength="40" id="author" class="input_field" name="author" />
                      <div class="cleaner_h10"></div>
                      <label for="email">Email:</label>
                      <input type="text" maxlength="40" id="email" class="input_field" name="email" />
                      <div class="cleaner_h10"></div>
                      <label for="subject">contact number:</label>
                      <input type="text" maxlength="40" id="subject" class="input_field" name="subject" />
                      <div class="cleaner_h10"></div>
                      <label for="text">Addess:</label>
                      <textarea id="text" name="text" rows="10" cols="30" class="required"></textarea>
                      <div class="cleaner_h10"></div>
                      <input type="submit" value="Edit" id="E" name="submit" class="submit_btn float_l" />
                      
                    </form>
                  </div>
                </div>
				<br>
				<br></div></div>
</body>
</html>