<%-- 
    Document   : Apply
    Created on : Oct 14, 2018, 7:25:33 PM
    Author     : Kritika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/jquery.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <link href="CSS/nav-slider.css" rel="stylesheet" type="text/css" />
        <title>Company</title>
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
            #com1{
                position: relative;
                top: 95px;
                height: 150px;
            }
            #com2{
                position: relative;
                top : 95px;
                height: 825px;
            }
            input[type=text] {
                position: relative;
                width: 35%;
                padding: 9px 9px;
                left: 400px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box; 
                border-radius: 5px;
             }
             input[type=radio], input[type=checkbox]{
                position: relative;
                margin: 9px 35px;
                left:335px;
            }
            button {
                position: relative;
                left: 550px;
	        color: white;
	        padding: 10px 15px;
	        margin: 8px 0;
	        border: none;
	        cursor: pointer;
	        width: 20%;
	        background-color: black;
 	        border-radius: 5px;
	        font-weight:bold;
            }
        </style>
    </head>
    <body>
        <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
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
        <nav class="navbar navbar-inverse navbar-fixed-top"  style="background:black;height:70px; padding:0px 100px;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"><h1>Riders</h1></a>
                </div>
                <div class="collapse navbar-collapse" id="myNav">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Company2.jsp">Home</a></li>
                        <li><a href="student.jsp">Students</a></li>
                        <li><a href="logout.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="com1">
            <h2 style="font-family:Footlight MT Light;font-size:40px;text-align: center; color:black;"><b>WELCOME!!</b></h2>
            <h4 style="font-family:Footlight MT Light;text-align: center; color:black;top: 20px;position: relative;"><b>Before we move further, please enter your details below.</b></h4>
        </div>
        <form action="Details_Com" method="post">
            <div id="com2">
                <label>Company Name : </label>
                <input type="text" name="compn" style="left: 345px;">
                <br/>
                <br/>
                <label><u>Contact Details</u></label>
                <br/>
                <br/>
                <label>Website : </label>
                <input type="text" name="cel">
                <br/>
                <br/>
                <label>Address : </label>
                <input type="text" name="add">
                <br/>
                <br/>
                <label>Contact No. : </label>
                <input type="text" name="cno" style="left: 375px;">
                <br/>
                <br/>
                <label>Landline No. : </label>
                <input type="text" name="lno" style="left: 370px;">
                <br/>
                <br/>
                <label><u>Selection Process : </u></label>
                <br/>
                <br/>
                <label>CGPA Criteria : </label>
                <input type="text" name="cgpa" style="left: 360px;">
                <br/>
                <br/>
                <label>Group Discussion : </label>
                <input type="radio" name="gd1" value="Yes" style="left:305px" checked><label style="left:295px">Yes</label>
                <input type="radio" name="gd1" value="No" style="left:305px"><label style="left:295px">No</label>
                <br/>
                <br/>
                <label>Aptitude Test : </label>
                <input type="radio" name="apt1" value="Yes" style="left:335px" checked><label style="left:325px">Yes</label>
                <input type="radio" name="apt1" value="No" style="left:335px"><label style="left:325px">No</label>
                <br/>
                <br/>
                <label>Technical Test : </label>
                <input type="radio" name="tec1" value="Yes" style="left:325px" checked><label style="left:315px">Yes</label>
                <input type="radio" name="tec1" value="No" style="left:325px"><label style="left:315px">No</label>
                <br/>
                <br/>
                <button name="bs2" type="submit">Submit</button>
                <br/>
            </div>
        </form>
    </body>
</html>
