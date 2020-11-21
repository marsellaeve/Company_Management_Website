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

        <h1>Branch Offices List</h1>

        <%
            List<Branch_officeBean> list = Branch_officeDAO.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table border="1" width="90%">
            <tr><th>Id</th><th>Name</th><th>Address</th><th>City</th><th>Contact</th><th>Edit</th><th>Delete</th></tr>
                    <c:forEach items="${list}" var="u">
                <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getAddress()}</td><td>${u.getCity()}</td><td>${u.getContact()}</td><td><a href="updateOfficeForm.jsp?id=${u.getId()}">Edit</a></td><td><a href="DeleteOffice.jsp?id=${u.getId()}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="addOfficeForm.jsp">Add New Office</a>

    </body>
</html>