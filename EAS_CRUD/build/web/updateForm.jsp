<%-- 
    Document   : updateForm
    Created on : Nov 20, 2020, 7:40:07 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
    </head>
    <body>
        <%@ include file="header.html" %>  <br>
        <%@page import="Controller.*"%>

        <%
            String id = request.getParameter("id");
            UserBean u = UserDAO.getRecordById(Integer.parseInt(id));
        %>

        <h1>Edit Form</h1>
        <form action="UpdateUser.jsp" method="post">
            <input type="hidden" name="id" value="<%=u.getId()%>"/>
            <table>
                <tr><td>Name:</td><td><input type="text" name="name" value="<%= u.getName()%>"/></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>
                <tr><td>Salary:</td><td><input type="number" step="0.01" name="salary" value="<%= u.getSalary()%>"/></td></tr>
                <tr><td>Gender</td><td><input type="radio" name="sex" value="male"/>Male <input type="radio" name="sex" value="female"/>Female </td></tr>
                <tr><td>Position:</td><td>
                        <select name="position">
                            <option>Manager</option>
                            <option>Programmer</option>
                            <option>Designer</option>
                            <option>Other</option>
                        </select>
                    </td></tr>
                <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>
            </table>
        </form>

    </body>
</html>
