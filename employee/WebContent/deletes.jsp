<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleted Successfully</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div align="center">
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM employee WHERE id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>>
<br><br><br>
<a href="listview.jsp"><button type="button" class="log out">Back!</button></a>
</div>
</body>
</html>