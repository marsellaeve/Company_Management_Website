<%-- 
    Document   : DeleteOffice
    Created on : Nov 21, 2020, 5:25:06 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.Branch_officeDAO"%>
<jsp:useBean id="u" class="Controller.Branch_officeBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
Branch_officeDAO.delete(u);
response.sendRedirect("viewOffice.jsp");
%>