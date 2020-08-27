<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<% String driverName = "com.mysql.cj.jdbc.Driver";%>
<% String url = "jdbc:mysql://localhost:3306/employee";%>
<% String user = "root";%>
<% String psw = "";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Login page</title>
</head>
<body>
 <div align="center">
<%
String id = request.getParameter("id");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String username=request.getParameter("username");
String password=request.getParameter("password");
String email=request.getParameter("email");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update employee set id=?,first_name=?,last_name=?,username=?,password=?,email=?,address=?,contact=? where id="+id;

ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, first_name);
ps.setString(3, last_name);
ps.setString(4, username);
ps.setString(5, password);
ps.setString(6, email);
ps.setString(7, address);
ps.setString(8, contact);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<br>
<br>
<a href="listview.jsp"><button type="button" class="user">View </button></a>
<a href="login.jsp"><button type="button" class="log out">Log Out!</button></a>
 </div>
</body>
</html>