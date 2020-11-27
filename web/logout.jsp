<%-- 
    Document   : logout
    Created on : Nov 9, 2018, 12:59:38 AM
    Author     : Kritika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
        <%!String a=""; %>
         <%HttpSession hs = request.getSession();
         hs.setAttribute("cn","");            
         response.sendRedirect("index.html");
         %>
    </body>
</html>
