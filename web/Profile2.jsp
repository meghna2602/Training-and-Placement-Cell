<%-- 
    Document   : profile
    Created on : Sep 28, 2018, 9:32:49 AM
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
                <li><a href="Profile2.jsp">Profile</a></li>
                <li><a href="Apply.jsp">Apply</a></li>
                <li><a href="index.html">LogOut</a></li>
            </ul>
        </div>
    </div>
    </nav>
        <%!String a="", gen="", dob="", f="", m="", s="", c="", cont="", id="", depart="", sem="", b10="", b12="", bdeg="", c12="", c10="", cdeg="", p10="", p12="", pdeg=""; %>
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
             
             <% 
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/Riders", "root","");
                    Statement st = con.createStatement();
                    String x = "select * from stu_pprofile where Name like '"+a+"'";
                    ResultSet rs = st.executeQuery(x);
                    while(rs.next()){
                        gen = rs.getString("Gender");
                        dob = rs.getString("DOB");
                        f = rs.getString("Father");
                        m = rs.getString("Mother");
                        s = rs.getString("State");
                        c = rs.getString("City");
                        cont = rs.getString("Contact");
                        id = rs.getString("ID");
                    }
                    
                    String y = "select * from stu_aprofile where ID like '"+id+"'";
                    ResultSet rs1 = st.executeQuery(y);
                    while(rs1.next()){
                        depart = rs1.getString("Department");
                        sem = rs1.getString("Semester");
                        b10 = rs1.getString("Board10");
                        c10 = rs1.getString("School10");
                        p10 = rs1.getString("Percent10");
                        b12 = rs1.getString("Board12");
                        c12 = rs1.getString("School12");
                        p12 = rs1.getString("Percent12");
                        bdeg = rs1.getString("Boarduni");
                        cdeg = rs1.getString("University");
                        pdeg = rs1.getString("Percentuni");
                    }
                }
                catch(Exception e){
                    out.println(e);
                }
            %>
        
            <div id="p1">
            <h1 style="font-size:36px;text-align: center; color:black;"><b>PERSONAL DETAILS</b></h1>
            </div>
            <div id="p11" class="container">
            <label>Name : </label>
            <input type="text" name="n1" value="<%=a %>" readonly="true">
            <br/>
            <br/>
            <label>Gender : </label>
            <input type="text" name="gender" value="<%=gen %>" readonly="true" style="left: 370px;">
            <br/>
            <br/>
            <label>D.O.B : </label>
            <input type="text" name="dob" value="<%=dob %>" readonly="true">
            <br/>
            <br/>
            <label>Father's Name : </label>
            <input type="text" name="fn1" value="<%=f %>" readonly="true" style="position: relative;left:330px;width: 25%;">
            <br/>
            <br/>
            <label>Mother's Name : </label>
            <input type="text" name="mn1" value="<%=m %>" readonly="true" style="position: relative;left:320px;width: 25%;">
            <br/>
            <br/>
            <label>State : </label>
            <input type="text" name="state" value="<%=s %>" readonly="true" style="position: relative;left:385px;width: 25%;">
            <br/>
            <br/>
            <label>City : </label>
            <input type="text" name="city" value="<%=c %>" readonly="true" style="position: relative;left:390px;width: 25%;">
            <br/>
            <br/>
            <label>Contact No. : </label>
            <input type="text" name="contact" value="<%=cont %>" readonly="true" style="position: relative;left:340px;width: 25%;">
            <br/>
            <br/>
                
            </div>
        
        <div id="p2">
            <h1 style="font-size:36px;text-align: center; color:black;"><b>ACADEMIC DETAILS</b></h1>
        </div>
        <div id="p22" class="container">
            <label>ID : </label>
            <input type="text" name="id" value="<%=id %>" readonly="true" style="position: relative;left:390px;width: 25%;">
            <br/>
            <br/>
            <label>Department : </label>
            <input type="text" name="dept" value="<%=depart %>" readonly="true" style="position: relative;left:330px;width: 25%;">
            <br/>
            <br/>
            <label>Semester : </label>
            <input type="text" name="sem" value="<%=sem %>" readonly="true" style="position: relative;left:350px;width: 25%;">
            <br/>
            <br/>
            <label>10th : </label>
            <input type="text" name="b1" value="<%=b10 %>" readonly="true">&nbsp;
            <input type="text" name="c1" value="<%=c10 %>" readonly="true">&nbsp;
            <input type="text" name="p1" value="<%=p10 %>" readonly="true">
            <br/>
            <br/>
            <label>12th : </label>
            <input type="text" name="b2" value="<%=b12 %>" readonly="true">&nbsp;
            <input type="text" name="c2" value="<%=c12 %>" readonly="true">&nbsp;
            <input type="text" name="p2" value="<%=p12 %>" readonly="true">
            <br/>
            <br/>
            <label>Degree : </label>
            <input type="text" name="b3" value="<%=bdeg %>" readonly="true" style="position: relative; left:360px;">&nbsp;
            <input type="text" name="p4" value="<%=cdeg %>" readonly="true" style="position: relative; left:360px;">&nbsp;
            <input type="text" name="p5" value="<%=pdeg %>" readonly="true" style="position: relative; left:360px;">
            <br/>
            <br/>
        </div>
            <div id="sec6" class="container-fluid">
            </div>
    </body>
</html>
