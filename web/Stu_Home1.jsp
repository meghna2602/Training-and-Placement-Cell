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
        <title>Home</title>
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
                height: 950px;;
                border: 1px solid #ccc;
            }
             label{
                position: relative;
                left: 250px;
                font-size: 16px;
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
        <%!String a=""; %>
         <%HttpSession hs = request.getSession();
         if(!hs.getAttribute("sn").toString().equals(""))
         {
             a=hs.getAttribute("sn").toString();
         }
         else
         {
             response.sendRedirect("index.jsp");
         }
              a=hs.getAttribute("sn").toString();
             %>
        
            <div id="p1">
                <h1 style="font-size:36px;text-align: center; color:black;"><b>WELCOME <%=a %> !!</b></h1>
            </div>
            <div id="p11" class="container">
                <h4 style="font-size:24px; text-align: left; color:black;"><b><u>Placement Rules and Regulation</u></b></h4>
                <br>
                <h4 style="font-size:18px;text-align: left; color:black;"><b>A. ELIGIBILITY & REGISTRATION</b></h4>
                <br>
                <p style="font-size:16px;text-align: left; color:black;">
                    1.	All students who expect to graduate from the Institute by the end of the academic year 2018-19 and are seeking employment may register for campus placements with this office. Placement Registration is for ONE ACADEMIC YEAR ONLY.
                    <br>
                    <br>
                    2.	Registration for all programmes will be done during the month of August.
                    <br>
                    <br>
                    3.	MS & PhD scholars’ placement will happen round the year. Their registration will be valid for one year only. They can register by attaching a certificate (NOC) & Abstract in the prescribed format available in the Placement website.
                    <br>
                    <br>
                    4.	Campus placement is a facility provided for the students. Registration is not compulsory. Students not interested in placement are advised not to register for placement.
                    <br>
                    <br>
                    5.	Backlogs: Students having backlog of 4 or more courses are not permitted to register for placement. Such students are advised to clear the backlogs and then register after the July-November end semester examinations. However, extended students can register in case of non-completion of course/project requirements in their last two semesters.
                    <br>
                    <br>
                    6.	RE-REGISTRATION: Students who have lost the job for genuine reasons will be allowed to re-register on a case to case basis.
                    <br>
                    <br>
                     7.	It is the responsibility of the student to check announcements / notices / updated information / shortlisted names etc. in the notice boards of Placement Website. Students are expected to be punctual. 
                    <br>
                    <br>
                     8. ATTENDANCE & PUNCTUALITY: 
                    <br>
                    <br>
                    a) A student who applies and gets shortlisted is bound to go through the entire selection process unless rejected midway by the company. Any student who withdraws deliberately in the middle of a selection process will be disallowed from placement for the rest of the academic year.
                    <br>
                    <br>
                    b) LATE COMERS FOR APTITUDE TEST / GD / INTERVIEW may not be allowed to appear for the selection process.
                    <br>
                    <br>
                    20. DISCIPLINE:
                    <br>
                    <br>
                    a) Students should maintain discipline and show ethical behaviour in every action they take during the placement process. Any student found violating the discipline rules set by the company or defaming the institute's name will be disallowed from the placements for the rest of the academic year. 
                    <br>
                    <br>
                    b) Students found cheating or misbehaving in the selection process (Test / GD / Interview) will be disallowed from the placements for the rest of the academic year. 
                    <br>
                    <br>   
                    c)	Dress code should be formal.
                    <br>
                    <br>
                    <h4 style="font-size:18px;text-align: center; color:black;"><b>Before applying please fill up your profile.</b></h4>
                </p>
           </div>
            <div id="sec6" class="container-fluid">
            </div>
    </body>
</html>
