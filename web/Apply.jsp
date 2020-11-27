<%-- 
    Document   : Apply
    Created on : Nov 5, 2018, 11:13:52 PM
    Author     : Kritika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link href="CSS/nav-slider.css" rel="stylesheet" type="text/css" />
        <link href="CSS/2nd.css" rel="stylesheet" type="text/css" />
        <title>Apply</title>
        <link rel="icon" href="pics/favicon.png" type="image/png">
<link rel="shortcut icon" href="pics/favicon.ico" type="img/x-icon">
        <style>
            body{
                font-family:Footlight MT Light;
            }
            label{
                position: relative;
                left: 250px;
                font-size: 16px;
            }
            #app1{
                position: relative;
                top: 95px;
                height: 150px;
            }
            #app2{
                position: relative;
                top : 50px;
                left: 310px;
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
             #sec6{
    positive: relative;
    bottom: 0;
    width: 100%;
    height: 70px;
    color: white;
    background-color: black;
    text-align: center;
    font-family: Footlight MT Light;
    padding-top: 25px;
    font-size: 16px;
}
        </style>
        <script>
            function demo(){
                //x = document.getElementById("t1").value;
                var a;
                if(window.XMLHttpRequest){
                    a = new XMLHttpRequest();
                }
                else{
                    a = new ActiveXOject("Microsoft.XMLHttp");
                }
                a.onreadystatechange = function(){
                    if(a.readyState == 4 && a.status==200){
                        alert("Successful");
                    }
                }
                a.open("GET","getcomp.jsp",true);
                a.send();
            }
        </script>
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
                <li><a href="Stu_Home.jsp">Home</a></li>
                <li><a href="Profile2.jsp">Profile</a></li>
                <li><a href="Apply.jsp">Apply</a></li>
                <li><a href="index.html">LogOut</a></li>
            </ul>
        </div>
    </div>
    </nav>
        <div id="app1">
            <h4 style="font-family:Footlight MT Light;text-align: center; color:black;top: 20px;position: relative;"><b>Below is the list of companies you are eligible for...</b></h4> 
        </div>
        
        <%!String a="",b="",c=""; %>
         <%HttpSession hs = request.getSession();
         if(!hs.getAttribute("sn").toString().equals(""))
         {
             a=hs.getAttribute("sn").toString();
         }
         else
         {
             response.sendRedirect("index.html");
         }
              a=hs.getAttribute("sn").toString();
             %>
        
             
                    <div id="app2">
                        <form action="Applied" method="post">
                        <table border="0">
                            <tr>
                                <td style="font-weight: bold; font-size: 20px; text-align: left;">Company Names</td>
                            </tr>
                    </div>
        
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                Statement st = con.createStatement();
                String x = "select * from stu_pprofile where Name ='"+a+"'";
                ResultSet rs = st.executeQuery(x);
                while(rs.next()){
                    b = rs.getString("ID");
                }
                Statement st1 = con.createStatement();
                String y = "select * from stu_aprofile where ID ='"+b+"'";
                ResultSet rs1 = st1.executeQuery(y);
                while(rs1.next()){
                    c = rs1.getString("Percentuni");
                }
                Statement st2 = con.createStatement();
                String z = "select Name from com_sel where CGPA<='"+c+"'";
                ResultSet rs2 = st2.executeQuery(z);
                while(rs2.next()){
                    %>
    <tr>
                    <td style="text-align: left;"><input type="checkbox" name ="c1" value="<%= rs2.getString("Name") %>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs2.getString("Name") %></td>
                    <td><button onclick="document.getElementById('id01').style.display='block'">View Details</button></td>
                </tr>
                   <% }
                }
            catch(Exception e){
                out.println(e);
            }
        %>
        <tr  style="text-align: left;">
            <td></td>
            <td><button onclick="demo()" style="width: 50%;">Apply</button></td>
        </tr>
       </table>
                    </form>
       <div id="id01" class="modal" align="center">
  
    <form class="modal-content animate" action="Signup_Stu">
    <div class="container">
    <h2><strong>Sign up</strong></h2>
      <input style="width: 90%;" type="text" name="ename">
      <input style="width: 90%;" type="text" name="funame">
        
      <button style="width: 90%;" type="submit">Sign up</button>
    </div>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script> 
    </body>
</html>
