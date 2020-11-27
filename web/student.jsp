<%-- 
    Document   : student
    Created on : Sep 28, 2018, 7:35:49 AM
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
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link href="CSS/nav-slider.css" rel="stylesheet" type="text/css" />
        <title>Students</title>
        <link rel="icon" href="pics/favicon.png" type="image/png">
        <link rel="shortcut icon" href="pics/favicon.ico" type="img/x-icon">
        <style>
            body{
                font-family:Footlight MT Light;
            }
            #app1{
                position: relative;
                top: 95px;
                height: 150px;
            }
            #app2{
                position: relative;
                top : 50px;
                left: 210px;
                height: 825px;
                width: 860px;
                padding: 9px 50px;
            }
            input[type=text] {
                position: relative;
                width: 95%;
                padding: 9px 9px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box; 
                border-radius: 5px;
             }
             table{
                 font-size: 16px;
                 text-align: center;
                 width: 100%;
             }
             td{
                 height: 50px;
             }
             button{
                 color: white;
                 background-color: black;
                 border-radius: 5px;
                 padding: 5px 15px;
	         margin: 8px 0;
	         font-weight:bold;
             }
        </style>
    </head>
    <body>
        <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
    <nav class="navbar navbar-inverse navbar-fixed-top"  style="background:black;height:70px; padding:0px 100px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><h1>Riders</h1></a>
        </div>
        <div class="collapse navbar-collapse" id="myNav">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Company2.jsp">Home</a></li>
                        <li><a href="student.jsp">Students</a></li>
                        <li><a href="index.html">LogOut</a></li>
            </ul>
        </div>
    </div>
    </nav>
        <%!String a=""; %>
         <%HttpSession hs = request.getSession();
         if(!hs.getAttribute("cn").toString().equals(""))
         {
             a=hs.getAttribute("cn").toString();
         }
         else
         {
             response.sendRedirect("index.jsp");
         }
              a=hs.getAttribute("cn").toString();
             %>
        
        <div id="app1">
            <h4 style="font-family:Footlight MT Light;text-align: center; color:black;top: 20px;position: relative;"><b>Below is the list of students...</b></h4> 
        </div>
        
        <div id="app2">
            <table border="0">
                <tr>
                    <td style="font-weight: bold; font-size: 20px;">Students Names</td>
                </tr>
        </div>
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                Statement st = con.createStatement();
                String x = "select Student_Name from applied where Company_Name = '"+a+"'";
                ResultSet rs = st.executeQuery(x);
                while(rs.next()){
                    %>
                <tr>
                    <td><%= rs.getString("Student_Name") %></td>
                    <td><button onclick="document.getElementById('id01').style.display='block'">View Details</button></td>
                </tr>
                   <%}
                }
            catch(Exception e){
                out.println(e);
            }
        %>
            </table>
    </body>
</html>
