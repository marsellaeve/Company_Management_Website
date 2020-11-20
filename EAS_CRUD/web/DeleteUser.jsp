<%-- 
    Document   : DeleteUser
    Created on : Nov 20, 2020, 7:36:49 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.UserDAO"%>
<jsp:useBean id="u" class="Controller.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDAO.delete(u);
response.sendRedirect("viewUsers.jsp");
%>