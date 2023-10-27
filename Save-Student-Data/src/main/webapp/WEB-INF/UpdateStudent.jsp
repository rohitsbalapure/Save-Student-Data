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


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rohit@#2022");
PreparedStatement st=con.prepareStatement("Update student set name=? where id=? ");

st.setInt(2, Integer.parseInt(id));
st.setString(1, name);

st.execute();
RequestDispatcher rs= request.getRequestDispatcher("fetchanddelete.jsp");
rs.forward(request, response);

%>
<h1> data updated successfully</h1>
</body>
</html>