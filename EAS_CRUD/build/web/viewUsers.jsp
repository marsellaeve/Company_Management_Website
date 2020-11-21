<%-- 
    Document   : viewUsers
    Created on : Nov 20, 2020, 7:41:00 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.UserBean"%>
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
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <title>View Users</title>
    </head>
    <body bgcolor="grey">
         <%@ include file="header.html" %>  <br>

        <%@page import="Controller.UserDAO, Controller.UserBean.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

        <h1>Users List</h1>

        <%
            List<UserBean> list = UserDAO.getAllRecords();
            request.setAttribute("list", list);
        %>

        <table class="table table-hover" border="1" width="90%">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Password</th>
                <th scope="col">Email</th>
                <th scope="col">Sex</th>
                <th scope="col">Position</th>
                <th scope="col">Salary</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
                    <c:forEach items="${list}" var="u">
                <tr>
                    <td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getPosition()}</td><td>${u.getSalary()}</td><td><a href="updateForm.jsp?id=${u.getId()}">Edit</a></td><td><a href="DeleteUser.jsp?id=${u.getId()}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="addUserForm.jsp">Add New User</a>

    </body>
</html>