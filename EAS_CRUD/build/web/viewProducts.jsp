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

        <%
            List<ProductBean> list = ProductDAO.getAllRecords();
            request.setAttribute("list", list);
        %>

        <h1 style="text-align:center;">Products Management Database</h1>
        <a href="addProductForm.jsp" style="color:white; text-decoration: none;"><button id="AddNew" type="button" class="btn btn-success" style="margin-left: 100px; margin-bottom: 20px;">Add New Products</button></a>

        <table class="table table-bordered table-striped table-hover" style="width:87%; margin-left: 90px;">
            <tr>
                <th style="text-align:center;">Id</th>
                <th style="text-align:center;">Name</th>
                <th style="text-align:center;">Price</th>
                <th style="text-align:center;">Description</th>
                <th style="text-align:center;">Merk</th>
                <th style="text-align:center;">Edit</th>
                <th style="text-align:center;">Delete</th>
            </tr>
            
            <c:forEach items="${list}" var="u">
                
            <tr>
                <td style="text-align:center;">${u.getId()}</td>
                <td>${u.getName()}</td>
                <td style="text-align:center;">${u.getPrice()}</td>
                <td>${u.getDescription()}</td>
                <td>${u.getMerk()}</td>
                <td style="text-align:center; margin:0px; padding: 0px;""><a href="updateProductForm.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-primary btn-xs" data-title="Edit" style="margin-top: 5px;"><span class="fas fa-pencil-alt fa-lg"></span></button></a></td>
                <td style="text-align:center; margin:0px; padding: 0px;"><a href="DeleteProduct.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-danger btn-xs" data-title="Delete"style="margin-top: 5px;"><span class="fas fa-trash fa-lg"></span></button></a></td>
            </tr>
            </c:forEach>
        </table>
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    </body>
</html>