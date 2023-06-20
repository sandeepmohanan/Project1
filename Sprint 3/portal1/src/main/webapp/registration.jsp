<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="home.html" %>  
<body>

  <div class="panel" id="contactus">
                <h1>Contact Information</h1>
                <p>The resource diary contain all the resources required during the course time.You need admin verification to get access to your resource section.This will take 24*7 to verify your account.if you have any emergency requiremnet.Please contact admin on 080056564</p>
                <div class="cleaner_h10"></div>
				
                <div class="col_380 float_l">
                  <div id="contact_form">
                    <form method="post" name="contact" action="registrationaction.jsp">
                       <label for="author">Registration Number/Enrollment Number</label>
                      <input type="text" maxlength="40" id="author" class="input_field" name="regno" />
                      
                       <label for="author">Enrolled course</label>
                     
                         <select name="type"  name="cId" id="wgtmsr" style="width:250px ;"id="author" class="input_field">
 
					<option value='CID'>PG Diploma</option>
				
					  </select>
					  
					  
					  
					  
					  
                     <label for="author">UserType</label>
                     <select name="type"  name="wgtmsr" id="wgtmsr" style="width:250px ;"id="author" class="input_field">
 
					<option value='Student'>Student</option>
					<option value='Faculty'>Faculty</option>
					  </select>
					  
					  
					  
                      <label for="author">Password</label>
                      <input type="text" maxlength="40" id="author" class="input_field" name="password" />
                      
                      <label for="author">Name:</label>
                      <input type="text" maxlength="40" id="author" class="input_field" name="name" />
                      <div class="cleaner_h10"></div>
                      <label for="email">Email:</label>
                      <input type="text" maxlength="40" id="email" class="input_field" name="email" />
                      <div class="cleaner_h10"></div>
                      <label for="subject">contact number:</label>
                      <input type="text" maxlength="40" id="subject" class="input_field" name="contact" />
                      <div class="cleaner_h10"></div>
                      <label for="text">Address:</label>
                      <label for="text">StreetNumber:</label>
                   
                       <input type="text" maxlength="40" id="subject" class="input_field" name="street_no" />
                                             <label for="text">StreetName:</label>
                       <input type="text" maxlength="40" id="subject" class="input_field" name="street_name" />
                                             <label for="text">Town/City:</label>
                       <input type="text" maxlength="40" id="subject" class="input_field" name="town" />
                                             <label for="text">Country:</label>
                       <input type="text" maxlength="40" id="subject" class="input_field" name="country" />
                      <div class="cleaner_h10"></div>
                      <br>
                      <input type="submit" value="Send" id="E" name="submit" class="submit_btn float_l" />
                      <input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                    </form>
                  </div>
                </div>
				<br>
				<br>
</body>
</html>