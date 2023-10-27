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
<style type="text/css">
.tr:hover
{
background-color: red;
}

</style>
</head>

<body>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","Rohit@#2022");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("Select * from student");

%>
<table cellpadding="20px" border="2">
<th>id </th>
<th>name</th>
<th>age </th>
<th>delete</th>
<th>update</th>

<%while(rs.next()) {%>
<tr class="tr"> 
<td><%= rs.getInt(1)%></td>
<td><%=rs.getString(2) %></td>
<td><%= rs.getInt(3)%></td>
<td> <a href="Delete.jsp?id=<%= rs.getInt(1)%>">Delete</a> </td>
<td  > <a href="Update.jsp?id=<%=rs.getInt(1) %>"> Update</a>  </td>
</tr>
<%} %>
</table>
</body>
</html>