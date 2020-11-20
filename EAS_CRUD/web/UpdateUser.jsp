<%-- 
    Document   : UpdateUser
    Created on : Nov 20, 2020, 7:36:59 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.UserDAO"%>
<jsp:useBean id="u" class="Controller.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.update(u);
response.sendRedirect("viewUsers.jsp");
%>
