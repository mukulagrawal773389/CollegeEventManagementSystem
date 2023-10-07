<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Messages </title>

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
            <a href="Event_management.jsp">
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
    <main>
        <style>
            .main-box{
                display: flex;
                align-items: center;
                gap: 48rem;
            }
            .btn{
                border: none;
                padding: 1rem 3.2rem;
                border-radius: 9px;
            }
            .btn:link,
            .btn:visited {
              background-color: #ee7ad3;
              color: #333;
              transition: 0.3s ease-in-out;
            }

            .btn:hover,
            .btn:active {
              background-color: #b33295;
              color: #fff;
            }

            .btn{
                text-decoration: none;
                font-family: 'Rubik', sans-serif;
                font-size: 1.36rem;
                line-height: 1;
                color: #555;
                font-weight: 600;
            }
        </style> 
        <div class="main-box">
        <div>
        <h1 id="main-h1" class="heading-pri"> Messages </h1>
        <p class="sub-heading"> Message from our viewers ! </p>
        </div>
        <div>
<!--            <div><a class="btn" href="AEvent.jsp"> Add Event</a></div>-->
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

PreparedStatement pst=con.prepareStatement("select * from contact");

ResultSet rs=pst.executeQuery();
out.print("<table style='border:0px solid #333; font-size: 1.4rem; padding: 1rem 4rem; width: 100%; height: 60vh;"
        + " margin-left: auto; margin-right: auto; padding-left: 10px; padding-right: 10px; "
        + "background-color: #fff; border-radius: .25rem; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); "
        + "text-align: left; border-radius: 19px;'><tr><th style='padding:1rem;'>Name</th><th style='padding:1rem;'>Email</th>"
        + "<th style='padding:1rem;'> Phone No. </th><th style='padding:1rem;'>Message</th><th style='padding:0rem 3.8rem;'> Reply</th></tr>");

while(rs.next())
{
    out.print("<tr>");
    out.print("<td style='padding:1rem;'>"+rs.getString(1)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(2)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(3)+"</td>");
    out.print("<td style='padding:1rem;'>"+rs.getString(4)+"</td>");
    out.print("<td><a style='border:0px solid #333; color: #cf3bad; font-size: 1.4rem; padding: 1rem 4rem; text-decoration:none;'  href='https://www.gmail.com'> Reply</a></td>");

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