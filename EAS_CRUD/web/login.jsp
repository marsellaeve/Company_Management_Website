<%-- 
    Document   : login
    Created on : Nov 20, 2020, 10:06:16 PM
    Author     : marsellaeve
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");
session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/empmanagement", "root", "");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'");
try{
if(rs.next()){
if(rs.getString("password").equals(password)&&rs.getString("userid").equals(userid))
{
    session.setAttribute("username",userid);
    response.sendRedirect("index.jsp");
}
else{
out.println("Invalid password or username.");
}
}
}
catch (Exception e) {
e.printStackTrace();
out.println("Invalid password or username.");
response.sendRedirect("index.html");
}
%>