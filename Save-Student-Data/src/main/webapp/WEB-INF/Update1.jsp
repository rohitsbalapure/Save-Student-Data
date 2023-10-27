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
String name=request.getParameter("name");
String age=request.getParameter("age");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rohit@#2022");
PreparedStatement ps=con.prepareStatement("Update student set name=?, age=? where id=? ");
ps.setString(1, name);
ps.setInt(2, Integer.parseInt(age));
ps.setInt(3, Integer.parseInt(id));

ps.execute();
RequestDispatcher rs= request.getRequestDispatcher("fetchanddelete.jsp");
rs.forward(request, response); 

%>

</body>
</html>