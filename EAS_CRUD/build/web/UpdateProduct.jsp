<%-- 
    Document   : UpdateProduct
    Created on : Nov 21, 2020, 5:01:07 PM
    Author     : marsellaeve
--%>
<%@page import="Controller.ProductDAO"%>
<jsp:useBean id="u" class="Controller.ProductBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=ProductDAO.update(u);
response.sendRedirect("viewProducts.jsp");
%>

