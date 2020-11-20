<%-- 
    Document   : AddUserSuccess
    Created on : Nov 20, 2020, 7:36:38 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
  String username=(String)session.getAttribute("username");
  if (username == null)
  {
    response.sendRedirect("index.html");
  }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="viewUsers.jsp"></jsp:include>
<title>Add User Success</title>
</head>
<body>
<%--<%@ include file="header.html" %>--%>

<p>Record successfully saved!</p>

</body>
</html>