<%-- 
    Document   : addProduct
    Created on : Nov 21, 2020, 5:02:02 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.ProductDAO"%>
<jsp:useBean id="u" class="Controller.ProductBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ProductDAO.save(u);
if(i>0){
response.sendRedirect("viewProducts.jsp");
}else{
response.sendRedirect("viewProducts.jsp");
}
%>