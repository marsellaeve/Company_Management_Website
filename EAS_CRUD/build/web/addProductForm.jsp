<%-- 
    Document   : addProductForm
    Created on : Nov 21, 2020, 5:03:19 PM
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
<title>Product Add</title>
</head>
<body>
     <%@ include file="header.html" %>  <br>

<jsp:include page="productForm.html"></jsp:include>

</body>
</html>