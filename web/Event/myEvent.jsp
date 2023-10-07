<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> My Events </title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <link rel="stylesheet" href="css/admin_dashboard.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="quaries.css">
</head>

<body>
    <menu>
        <p class="heading-pri"> User Dashboard </p>
        <div>
<!--            <ion-icon class="search-icon" name="search"></ion-icon>
            <input class="input" type="text" placeholder="Search" required />-->
            <!-- <ion-icon name="chatbubble-outline"></ion-icon>
            <ion-icon name="notifications-outline"></ion-icon>
            <div class="profile"><img src="customer-5.jpg" alt=""></div> -->
        </div>
    </menu>
    <section class="index">
        <h1 class="admin-logo"> YOY </h1>

        <div class="index-flex">
            <a href="user_dashboard.jsp">
                <ion-icon class="icons" name="home-outline"></ion-icon>
            </a>
            <a href="user_dashboard.jsp" class="index-item">Home</a>
        </div>

        <div class="index-flex">
            <a href="myResult.jsp">
                <ion-icon class='icons' name="golf-outline"></ion-icon>
            </a>
            <a href="myResult.jsp" class="index-item"> My Results</a>
        </div>

        <div class="index-flex">
            <a href="myEvent.jsp">
                <ion-icon class="icons" name="calendar-clear-outline"></ion-icon>
            </a>
            <a href="myEvent.jsp" class="index-item"> My Event</a>
        </div>

        <!-- <div class="index-flex">
            <ion-icon class="icons" name="people-outline"></ion-icon>
            <a href="#" class="index-item"> Users</a>
        </div> -->

        <div class="index-flex">
            <ion-icon class="icons" name="log-out-outline"></ion-icon>
            <a href="login.html" class="index-item">Logout</a>
        </div>
        <!-- <img src="a.png" alt="" height="700" width="170"> -->
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
              box-shadow: 0px 5px 10px 0px rgb(174, 13, 104, 0.9);
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
        <h1 id="main-h1" class="heading-pri"> Join Event </h1>
        <p class="sub-heading"> Check events and there schedule </p>
        </div>
<!--        <div>
            <div><a class="btn" href="AEvent.jsp"> Add Event</a></div>
        </div>-->
         </div>
        <div class="content">
            
            <%@page import="java.sql.*" %>
<%
   try
{
    String na=(String)session.getAttribute("na");
    String em=(String)session.getAttribute("em");
    
response.setContentType("text/html");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select * from event");

ResultSet rs=pst.executeQuery();
out.print("<table style='border:0px solid #333; font-size: 1.4rem; padding: 1rem 4rem; width: 100%; height: 40vh;"
        + " margin-left: auto; margin-right: auto; padding-left: 10px; padding-right: 10px; "
        + "background-color: #fff; border-radius: .25rem; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); "
        + "text-align: left; border-radius: 19px; '><tr><th style='padding-right: 16px;'>Event ID</th><th>Event Type</th><th>Event Name</th><th style='padding-right: 46px;'>Event Date</th>"
        + "<th> Start Time</th><th> End Time</th><th style='padding-right: 16px;'> Price1</th><th style='padding-right: 16px;'> Price2</th><th style='padding-right: 16px;'> Price3</th><th> Organized By</th><th>Action</th></tr>");

while(rs.next())
{
    out.print("<tr>");
    out.print("<td>"+rs.getString(1)+"</td>");
    out.print("<td>"+rs.getString(2)+"</td>");
    out.print("<td>"+rs.getString(3)+"</td>");
    out.print("<td>"+rs.getString(4)+"</td>");
    out.print("<td>"+rs.getString(5)+"</td>");
    out.print("<td>"+rs.getString(6)+"</td>");
    out.print("<td>"+rs.getString(7)+"</td>");
    out.print("<td>"+rs.getString(8)+"</td>");
    out.print("<td>"+rs.getString(9)+"</td>");
    out.print("<td>"+rs.getString(10)+"</td>");
    out.print("<td><a style='border:0px solid #fff; color: #fff; font-size: 1.4rem; text-decoration:none; padding: 1rem 3.2rem; border-radius: 9px; background-color: #b33295;' href=Bevent.jsp?na="+na+"&&em="+em+"&&eid="+rs.getString(1)+"&&ename="+rs.getString(3)+"&&edt="+rs.getString(4)+"> Participate </a></td>");
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