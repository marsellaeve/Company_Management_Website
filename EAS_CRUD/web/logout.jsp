<%-- 
    Document   : logout
    Created on : Nov 20, 2020, 11:09:20 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><body bgcolor="khaki">
        <%
            session.invalidate();
            response.sendRedirect("index.html");
        %>
        
    </body>
</html>