<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id =request.getParameter("id");


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rohit@#2022");
PreparedStatement ps=con.prepareStatement("Delete from student where id=?");

ps.setInt(1, Integer.parseInt(id));

ps.execute();

RequestDispatcher rs= request.getRequestDispatcher("fetchanddelete.jsp");
rs.forward(request, response);


%>
<h1>
Data deleted successfully
</h1>
</body>
</html>