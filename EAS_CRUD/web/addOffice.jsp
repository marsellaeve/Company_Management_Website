<%-- 
    Document   : addOffice
    Created on : Nov 21, 2020, 5:27:20 PM
    Author     : marsellaeve
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Branch_officeDAO"%>
<jsp:useBean id="u" class="Controller.Branch_officeBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=Branch_officeDAO.save(u);
if(i>0){
response.sendRedirect("viewOffice.jsp");
}else{
response.sendRedirect("viewOffice.jsp");
}
%>