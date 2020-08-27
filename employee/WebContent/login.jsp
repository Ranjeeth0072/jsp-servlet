<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Login page</title>
</head>
<body>
 <div align="center">
 
 <h1>Welcome To Our Home Page</h1>
 <div class="nav">
  <h2> Login Form</h2>
 <%--  <%= request.getAttribute("errorMessage") %> --%>
  <h3 id="hh">${loginBean.error}</h3>  
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table><br>
   <input type="submit" value="Submit" />
  </form><br>
 </div>
 </div>
</body>
</html>