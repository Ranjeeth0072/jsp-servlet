<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
 <div class="nav">
 <div align="center">
  <h1> Register Form</h1>
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="with:0 %">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
     <tr>
     <td>Email</td>
     <td><input type="email" name="email" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table><br>
   <input type="submit" value="Submit" />
   <a href="loginsuccess.jsp"><button type="button" class="log out">Back!</button></a>
   <a href="employeeregister.jsp"><button type="button" class="log out">Reset!</button></a>
  </form><br>
 </div>
 </div>
</body>
</html>