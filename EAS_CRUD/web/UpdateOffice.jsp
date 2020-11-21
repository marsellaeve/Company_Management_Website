<%-- 
    Document   : UpdateOffice
    Created on : Nov 21, 2020, 5:26:21 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.Branch_officeDAO"%>
<jsp:useBean id="u" class="Controller.Branch_officeBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=Branch_officeDAO.update(u);
response.sendRedirect("viewOffice.jsp");
%>

