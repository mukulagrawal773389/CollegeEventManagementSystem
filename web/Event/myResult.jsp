<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> My Results </title>

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
        <h1 id="main-h1" class="heading-pri"> My Result </h1>
        <p class="sub-heading"> All applied events results </p>
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
response.setContentType("text/html");
String em=(String)session.getAttribute("em");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select * from result where wid=?");
pst.setString(1,em);

ResultSet rs=pst.executeQuery();
out.print("<table style='border:0px solid #333; font-size: 1.4rem; padding: 1rem 4rem; width: 100%; height: 30vh;"
        + " margin-left: auto; margin-right: auto; padding-left: 10px; padding-right: 10px; "
        + "background-color: #fff; border-radius: .25rem; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); "
        + "text-align: left; border-radius: 19px;'><tr><th>Event ID</th><th>Eventin Type</th><th>Event Name</th><th>Event Date</th>"
        + "<th> Winner ID</th><th> Winner Name</th><th> Rank</th><th> Action</th></tr>");
int i=0;
while(rs.next())
{
i=1;
    out.print("<tr>");
    out.print("<td>"+rs.getString(1)+"</td>");
    out.print("<td>"+rs.getString(2)+"</td>");
    out.print("<td>"+rs.getString(3)+"</td>");
    out.print("<td>"+rs.getString(4)+"</td>");
    out.print("<td>"+rs.getString(5)+"</td>");
    out.print("<td>"+rs.getString(6)+"</td>");
    out.print("<td>"+rs.getString(7)+"</td>");
   
    
    out.print("</tr>");

}
out.print("</table>");
if(i==1)
{
    String a="ab\\"+em.substring(0,em.length()-4)+".pdf";
    out.print("<a style='border:0px solid #333; color: #cf3bad; font-size: 1.4rem;line-height:1.2;  text-decoration:none;' href="+a+">DownLoad Certificate</a>");
}
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