<%-- 
    Document   : profile
    Created on : Sep 28, 2018, 9:32:49 AM
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
        <title>Profile</title>
        <link rel="icon" href="pics/favicon.png" type="image/png">
<link rel="shortcut icon" href="pics/favicon.ico" type="img/x-icon">
        <style>
            body{
                font-family:Footlight MT Light;
            }
            #p1{
                position: relative;
                padding-top: 110px;
                height: 190px;
            }
            #p11{
                position: relative;
                height: 580px;;
            }
            #p2{
                position: relative;
                padding-top: 30px;
                height: 120px;
            }
            input[type=password], input[type=text] {
                position: relative;
                width: 15%;
                padding: 9px 9px;
                left: 380px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box; 
                border-radius: 5px;
             }
             label{
                position: relative;
                left: 250px;
                font-size: 16px;
            }
            input[type=radio]{
                position: relative;
                margin: 9px 35px;
                left:335px;
            }
            input[type=date]{
                position: relative;
                left:380px;
                border: 1px solid #ccc;
                box-sizing: border-box; 
                border-radius: 5px;
                padding: 9px 9px;
            }
            button {
                position: relative;
                left: 450px;
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
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top"  style="background:black;height:70px; padding:0px 100px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><h1>Riders</h1></a>
        </div>
        <div class="collapse navbar-collapse" id="myNav">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Stu_Home.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="Apply.jsp">Apply</a></li>
                <li><a href="index.html">LogOut</a></li>
            </ul>
        </div>
    </div>
    </nav>
        <%!String a=""; %>
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
        
            <div id="p1">
            <h1 style="font-size:36px;text-align: center; color:black;"><b>PERSONAL DETAILS</b></h1>
            </div>
            <form action="Profile_Stu" method="post">
            <div id="p11" class="container">
            <label>Name : </label>
            <input type="text" name="n1" id="n1" placeholder="First" required>&nbsp;
            <input type="text" name="n2" id="n2" placeholder="Middle">&nbsp;
            <input type="text" name="n3" id="n3" placeholder="Last">
            <br/>
            <br/>
            <label>Gender : </label>
            <input type="radio" name="gender" id="n4" value="Male" checked><label style="position: relative;left:320px">Male</label>
            <input type="radio" name="gender" id="n5" value="Female"><label style="position: relative;left:320px">Female</label>
            <br/>
            <br/>
            <label>D.O.B : </label>
            <input type="date" name="dob" id="n6">
            <br/>
            <br/>
            <label>Father's Name : </label>
            <input type="text" name="fn1" id="n7" style="position: relative;left:330px;width: 25%;" placeholder="" required>
            <br/>
            <br/>
            <label>Mother's Name : </label>
            <input type="text" name="mn1" id="n8" style="position: relative;left:320px;width: 25%;" placeholder="" required>
            <br/>
            <br/>
            <label>State : </label>
            <input type="text" name="state" id="n9" style="position: relative;left:385px;width: 25%;" placeholder="">
            <br/>
            <br/>
            <label>City : </label>
            <input type="text" name="city" id="n10" style="position: relative;left:390px;width: 25%;" placeholder="">
            <br/>
            <br/>
            <label>Contact No. : </label>
            <input type="text" name="contact" id="n11" style="position: relative;left:340px;width: 25%;" placeholder="">
            <br/>
            <br/>
                
            </div>
        
        <div id="p2">
            <h1 style="font-size:36px;text-align: center; color:black;"><b>ACADEMIC DETAILS</b></h1>
        </div>
        <div id="p22" class="container">
            <label>ID : </label>
            <input type="text" name="id" id="n12" style="position: relative;left:390px;width: 25%;" placeholder="">
            <br/>
            <br/>
            <label>Department : </label>
            <input type="text" name="dept" id="n13" style="position: relative;left:330px;width: 25%;" placeholder="" required>
            <br/>
            <br/>
            <label>Semester : </label>
            <input type="text" name="sem" id="n15" style="position: relative;left:350px;width: 25%;" placeholder="" required>
            <br/>
            <br/>
            <label>10th : </label>
            <input type="text" name="b1" id="n16" placeholder="Board/Course" required>&nbsp;
            <input type="text" name="c1" id="n17" placeholder="School/University">&nbsp;
            <input type="text" name="p1" id="n18" placeholder="Percentage">
            <br/>
            <br/>
            <label>12th : </label>
            <input type="text" name="b2" id="n19" placeholder="Board/Course" required>&nbsp;
            <input type="text" name="c2" id="n20" placeholder="School/University">&nbsp;
            <input type="text" name="p2" id="n21" placeholder="Percentage">
            <br/>
            <br/>
            <label>Degree : </label>
            <input type="text" name="b3" placeholder="Board/Course" required style="position: relative; left:360px;">&nbsp;
            <input type="text" name="p4" placeholder="School/University" style="position: relative; left:360px;">&nbsp;
            <input type="text" name="p5" placeholder="Percentage" style="position: relative; left:360px;">
            <br/>
            <br/>
            <button name="bs1" type="submit">Submit</button>
            <br/>
            <br/>
        </div>
            </form>
             <div id="sec6" class="container-fluid">
            </div>
    </body>
</html>
