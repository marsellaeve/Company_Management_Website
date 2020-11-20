<%-- 
    Document   : errorPage
    Created on : Nov 20, 2020, 7:38:33 PM
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
<title>Add User Success</title>
</head>
<body bgcolor>
<%@ include file="header.html" %>

<p>Sorry, an error occurred!</p>
<jsp:include page="userForm.html"></jsp:include>

</body>
</html>
