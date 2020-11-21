<%-- 
    Document   : DeleteProduct
    Created on : Nov 21, 2020, 4:57:22 PM
    Author     : marsellaeve
--%>

<%@page import="Controller.ProductDAO"%>
<jsp:useBean id="u" class="Controller.ProductBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
ProductDAO.delete(u);
response.sendRedirect("viewProducts.jsp");
%>