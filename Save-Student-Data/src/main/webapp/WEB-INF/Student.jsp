<%@page import="java.awt.print.PrinterGraphics"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

String id = request.getParameter("Id");
String name = request.getParameter("Name");
String age = request.getParameter("Age");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rohit@#2022");
PreparedStatement ps = con.prepareStatement("insert into student(id, name, age) values (?,?,?)");

ps.setInt(1, Integer.parseInt(id));
ps.setString(2, name);
ps.setInt(3, Integer.parseInt(age));

ps.execute();

out.println("Data saved succesfully");


%>
</body>
</html>