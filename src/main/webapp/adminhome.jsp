<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>
</head>
<body>
	<h1>Admin Home Page</h1>


	<%
	ResultSet rs = (ResultSet) request.getAttribute("rs");
	while(rs.next())
	{
	%>
	<h1><%= rs.getInt(1) %></h1>
	<h2><%= rs.getString(2) %></h2>
	<h2><%= rs.getString(3) %></h2>
	<h2><%= rs.getLong(4) %></h2>
	<h2><%= rs.getString(5) %></h2>
	<h2><%= rs.getString(6) %></h2>
	<br>
	<a href="delete?id=<%=rs.getInt(1)%>"><button>Delete</button></a>
	<br>
	<%} %>
	


</body>
</html>