<%-- 
    Document   : viewOffice
    Created on : Nov 21, 2020, 3:03:08 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.Branch_officeBean"%>
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
        <title>View Branch Office</title>
    </head>
    <body bgcolor="grey">
         <%@ include file="header.html" %>  <br>

        <%@page import="Controller.Branch_officeDAO, Controller.Branch_officeBean.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


        <%
            List<Branch_officeBean> list = Branch_officeDAO.getAllRecords();
            request.setAttribute("list", list);
        %>
        
        <h1 style="text-align:center;">Branch Office Management Database</h1>
        <a href="addOfficeForm.jsp" style="color:white; text-decoration: none;"><button id="AddNew" type="button" class="btn btn-success" style="margin-left: 100px; margin-bottom: 20px;">Add New Office</button></a>

        <table class="table table-bordered table-striped table-hover" style="width:87%; margin-left: 90px;">
            <tr>
                <th style="text-align:center;">Id</th>
                <th style="text-align:center;">Name</th>
                <th style="text-align:center;">Address</th>
                <th style="text-align:center;">City</th>
                <th style="text-align:center;">Contact</th>
                <th style="text-align:center;">Edit</th>
                <th style="text-align:center;">Delete</th>
            </tr>
            <c:forEach items="${list}" var="u">
            <tr>
                <td style="text-align:center;">${u.getId()}</td>
                <td>${u.getName()}</td>
                <td>${u.getAddress()}</td>
                <td>${u.getCity()}</td>
                <td>${u.getContact()}</td>
                <td style="text-align:center; margin:0px; padding: 0px;""><a href="updateOfficeForm.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-primary btn-xs" data-title="Edit" style="margin-top: 5px;"><span class="fas fa-pencil-alt fa-lg"></span></button></a></td>
                <td style="text-align:center; margin:0px; padding: 0px;"><a href="DeleteOffice.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-danger btn-xs" data-title="Delete"style="margin-top: 5px;"><span class="fas fa-trash fa-lg"></span></button></a></td>
            </c:forEach>
        </table>
        
        <div class="container body-content">
            <hr />
            <footer>
                <p style="text-align:center">&copy;Amel Evelyn Waldo Website</p>
            </footer>
        </div>
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    </body>
</html>