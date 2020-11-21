
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
        <title>View Users</title>
    </head>
    <body bgcolor="grey">
        <%@ include file="header.html" %><br>

        <%@page import="Controller.UserDAO, Controller.UserBean.*,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
        <h1 style="text-align:center;">Employee Management Database</h1>
        <!--<button id="searchByName">search</button>-->
        <a href="addUserForm.jsp" style="color:white; text-decoration: none;"><button id="AddNew" type="button" class="btn btn-success" style="margin-left: 100px; margin-bottom: 20px;">Add New Employee</button></a>

                <%
                    List<UserBean> list = UserDAO.getAllRecords();
                    request.setAttribute("list", list);
                %>
            
                    <table class="table table-bordered table-striped table-hover" style="width:87%; margin-left: 90px;">
                        <tr>
                            <th style="text-align:center;">Id</th>
                            <th style="text-align:center;">Name</th>
                            <th style="text-align:center;">Password</th>
                            <th style="text-align:center;">Email</th>
                            <th style="text-align:center;">Gender</th>
                            <th style="text-align:center;">Position</th>
                            <th style="text-align:center;">Salary</th>
                            <th style="text-align:center;">Edit</th>
                            <th style="text-align:center;">Delete</th>
                        </tr>
                                <c:forEach items="${list}" var="u">
                            <tr>
                                <td style="text-align:center;">${u.getId()}</td>
                                <td>${u.getName()}</td>
                                <td>${u.getPassword()}</td>
                                <td>${u.getEmail()}</td>
                                <td style="text-align:center;">${u.getSex()}</td>
                                <td style="text-align:center;">${u.getPosition()}</td>
                                <td style="text-align:center;">${u.getSalary()}</td>
                                <td style="text-align:center; margin:0px; padding: 0px;"><a href="updateForm.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-primary btn-xs" data-title="Edit" style="margin-top: 5px;"><span class="fas fa-pencil-alt fa-lg"></span></button></a></td>
                                <td style="text-align:center; margin:0px; padding: 0px;"><a href="DeleteUser.jsp?id=${u.getId()}" style="color: #fff; text-decoration: none"><button class="btn btn-danger btn-xs" data-title="Delete"style="margin-top: 5px;"><span class="fas fa-trash fa-lg"></span></button></a></td>
                            </tr>
                        </c:forEach>
                    </table>
        <br />
                
        <div class="container body-content">
            <hr />
            <footer>
                <p style="text-align:center">&copy;Amel Evelyn Waldo Website</p>
            </footer>
        </div>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    </body>
</html>