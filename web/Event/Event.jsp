<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Events </title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <link rel="stylesheet" href="css/event.css">
    <link rel="stylesheet" href="css/event_management.css">
    <link rel="stylesheet" href="css/quaries.css">
</head>

<body>
     <header class="header">
            <h1 class="logo"> YOY </h1>
            <nav class="main-nav">
                <ul class="main-nav-list">
                    <li><a class="main-nav-link" href="index.html"> Home </a></li>
                    <li><a class="main-nav-link" href="Event.jsp"> Events </a></li>
                    <li><a class="main-nav-link" href="contact.html"> Contact us</a></li>
<!--                    <li><a class="main-nav-link" href="admin_login.html"> Admin Login </a></li>-->
                    <li><a class="main-nav-link nav-cta" href="login.html"> Login </a></li>
                    <li><a class="main-nav-link nav-cta" href="signup.html"> Register </a></li>
                </ul>
            </nav>
        </header>
    <main>
        <div class="main-box">
        <div>
        <h1 id="main-h1" class="heading-pri"> Events </h1>
        <p class="sub-heading"> Participate into events and check there schedules </p>
        </div>
         </div>
        <div class="content">
            
            <%@page import="java.sql.*" %>
<%
   try
{
response.setContentType("text/html");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select * from event");

ResultSet rs=pst.executeQuery();
out.print("<table style='border:0px solid #333; font-size: 1.4rem; padding: 1rem 2rem; width: 90%; height: 40vh;"
        + " margin-left: auto; margin-right: auto; padding-left: 10px; padding-right: 10px; "
        + " background-color:#fff; border-radius: 19px; border: 1px solid rgba(255,255,255,0.1); box-shadow: 0 0 40px rgba(8,7,16,0.6); "
        + "text-align: left; border-radius: 19px; border: 2px solid #fff '><tr><th>Event Type</th><th>Event Name</th><th>Event Date</th>"
        + "<th> Start Time</th><th> End Time</th><th> Price1</th><th> Price2</th><th> Price3</th><th> Organized By</th></tr>");

while(rs.next())
{
    out.print("<tr>");
    out.print("<td>"+rs.getString(2)+"</td>");
    out.print("<td>"+rs.getString(3)+"</td>");
    out.print("<td>"+rs.getString(4)+"</td>");
    out.print("<td>"+rs.getString(5)+"</td>");
    out.print("<td>"+rs.getString(6)+"</td>");
    out.print("<td>"+rs.getString(7)+"</td>");
    out.print("<td>"+rs.getString(8)+"</td>");
    out.print("<td>"+rs.getString(9)+"</td>");
    out.print("<td>"+rs.getString(10)+"</td>");
    out.print("</tr>");

}
out.print("</table>");

}
catch(Exception ett)
{
out.print(ett);
}

%>

        </div>
    </main>
</body>

</html>