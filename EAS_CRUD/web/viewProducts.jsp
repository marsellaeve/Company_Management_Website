<%-- 
    Document   : viewProducts
    Created on : Nov 21, 2020, 1:31:15 AM
    Author     : marsellaeve
--%>

<%@page import="Controller.ProductBean"%>
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
        <title>View Products</title>
    </head>
    <body bgcolor="grey">
         <%@ include file="header.html" %>  <br>

        <%@page import="Controller.ProductDAO, Controller.ProductBean.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1>Products List</h1>

        <%
            List<ProductBean> list = ProductDAO.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table border="1" width="90%">
            <tr><th>Id</th><th>Name</th><th>Price</th><th>Description</th><th>Merk</th><th>Edit</th><th>Delete</th></tr>
                    <c:forEach items="${list}" var="u">
                <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPrice()}</td><td>${u.getDescription()}</td><td>${u.getMerk()}</td><td><a href="updateProductForm.jsp?id=${u.getId()}">Edit</a></td><td><a href="DeleteProduct.jsp?id=${u.getId()}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="addProductForm.jsp">Add New Product</a>

    </body>
</html>