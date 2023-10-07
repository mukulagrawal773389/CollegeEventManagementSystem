<%@ page import="com.oreilly.servlet.MultipartRequest" %>   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> event_management </title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <link rel="stylesheet" href="css/admin_dashboard.css">
    <link rel="stylesheet" href="css/event_management.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/quaries.css">
    <link rel="stylesheet" href="css/AEvent.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="quaries.css">
</head>

<body>
    <menu>
        <p class="heading-pri"> Admin Dashboard </p>
        <div>
            <ion-icon class="search-icon" name="search"></ion-icon>
            <input class="input" type="text" placeholder="Search" required />
            <!-- <ion-icon name="chatbubble-outline"></ion-icon>
            <ion-icon name="notifications-outline"></ion-icon>
            <div class="profile"><img src="customer-5.jpg" alt=""></div> -->
        </div>
    </menu>
    <section class="index">
        <h1 class="admin-logo"> YOY </h1>

        <div class="index-flex">
            <a href="admin_dashboard.html">
                <ion-icon class="icons" name="home-outline"></ion-icon>
            </a>
            <a href="admin_dashboard.html" class="index-item">Home</a>
        </div>

        <div class="index-flex">
            <a href="event_management.html">
                <ion-icon class="icons" name="stats-chart-outline"></ion-icon>
            </a>
            <a href="Event_management.jsp" class="index-item">Event Management</a>
        </div>

        <div class="index-flex">
            <a href="Result.jsp">
                <ion-icon class='icons' name="golf-outline"></ion-icon>
            </a>
            <a href="Result.jsp" class="index-item"> Results</a>
        </div>

        <div class="index-flex">
            <a href="Users.jsp">
                <ion-icon class="icons" name="people-outline"></ion-icon>
            </a>
            <a href="Users.jsp" class="index-item"> Users</a>
        </div>

        <div class="index-flex">
            <a href="message.jsp">
                <ion-icon class="icons" name="chatbox-ellipses-outline"></ion-icon>
            </a>
            <a href="message.jsp" class="index-item"> Message </a>
        </div>
        
                 <div class="index-flex">
            <a href="upload_crti.jsp">
                <ion-icon class="icons" name="newspaper-outline"></ion-icon>
            </a>
            <a href="upload_crti.jsp" class="index-item"> Upload Certificate </a>
        </div>

        <div class="index-flex">
            <a href="admin_login.html">
                <ion-icon class="icons" name="log-out-outline"></ion-icon>
            </a>
            <a href="admin_login.html" class="index-item">Logout</a>
        </div>
    </section> 
    <style>
main {
        padding: 2.2rem 2.6rem;
}
.main_box{
    width: 100%;
    height: 60vh;
    border-radius: 22px;
/*    padding: 0rem 14rem;*/
    border: 2px solid rgba(255,255,255,0.6);
    box-shadow: 0 0 40px rgba(8,7,16,0.1);
    background-color: #fff;
/*background: #E0EAFC;   fallback for old browsers 
background: -webkit-linear-gradient(to right, #CFDEF3, #E0EAFC);   Chrome 10-25, Safari 5.1-6 
background: linear-gradient(to right, #CFDEF3, #E0EAFC);  W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

form{
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap:1rem;
    padding: 6rem 8rem;
}

#main-h1 {
        font-family: 'Rubik', sans-serif;
    font-size: 2.6rem;
    padding: 2.2rem 4.3rem;
}

.sub-heading {
        font-family: 'Rubik', sans-serif;
    font-size: 1.2rem;
    padding: 0rem 4.3rem;
    margin-top: -12px;
}
    </style>
<main>
        <div>

    <form action="upload.jsp" method="post" enctype="multipart/form-data">  
        <span style="color: #333; font-size: 3rem;    font-family: 'Rubik', sans-serif;"> Participated Users </span><br/>
             <%@page import="java.sql.*" %>
        <%
   try
{
response.setContentType("text/html");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select distinct applicantname,applicantemail,eid,ename,edate from bevent;");

ResultSet rs=pst.executeQuery();
out.print("<table style='border:0px solid #333; font-size: 1.4rem; padding: 1rem 4rem; width: 100%; height: 60vh;"
        + " margin-left: auto; margin-right: auto; padding-left: 10px; padding-right: 10px; "
        + "background-color: #fff; border-radius: .25rem; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); "
        + "text-align: left; border-radius: 19px;'><tr><th style='padding:1rem;'>ApplicantName</th><th style='padding:1rem;'>ApplicantEmail</th>"
        + "<th style='padding:1rem;'> EventID </th><th style='padding:1rem;'> EventName</th></tr>");

while(rs.next())
{
    out.print("<tr>");
    out.print("<td style='padding:1rem;'>"+rs.getString(1)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(2)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(3)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(4)+"</td>");


    out.print("</tr>");

}
out.print("</table>");

}
catch(Exception ett)
{
out.print(ett);
}

%>
</form>
             
        </div>
    </main>
</body>