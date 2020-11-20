<%-- 
    Document   : addUserForm
    Created on : Nov 20, 2020, 7:37:35 PM
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
<title>Employee Registration</title>
</head>
<body>
     <%@ include file="header.html" %>  <br>

<jsp:include page="userForm.html"></jsp:include>

</body>
</html>