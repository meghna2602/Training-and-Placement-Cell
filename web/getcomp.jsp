<%-- 
    Document   : getcomp
    Created on : Nov 5, 2018, 11:34:16 PM
    Author     : Kritika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String n="",a="",c="",s="",p="",u=""; %>
        <%
            u = request.getParameter("un");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                Statement st = con.createStatement();
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
