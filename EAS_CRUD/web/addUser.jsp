<%-- 
    Document   : addUser
    Created on : Nov 20, 2020, 7:37:18 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.UserDAO"%>
<jsp:useBean id="u" class="Controller.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.save(u);
if(i>0){
response.sendRedirect("AddUserSuccess.jsp");
}else{
response.sendRedirect("errorPage.jsp");
}
%>