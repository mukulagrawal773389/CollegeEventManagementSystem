<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> user_dashboard </title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <link rel="stylesheet" href="css/user_dashboard.css">
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
            <a href="user_dsahboard.jsp">
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
            <a href="my Event.jsp">
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
        <div class="main_box">
        <h1 id="main-h1" class="heading-pri"> Hello <%= session.getAttribute("na") %> </h1>
        <p class="sub-heading" style="font-size: 15px"> Welcome Back! </p>
        <div class="content">
            <img class="img" src="Sandy_Bus-37_Single-08.jpg">
<!--            <div class="box"></div>-->
<h2 class="heading-pri" style="font-size: 20px"> Manage your all events and to be updated.</h2>
<h4 style="font-size: 15px">You Participated In</h4> 
  <%@page import="java.sql.*" %>
<%    
    try{
    response.setContentType("text/html");
    
        String em= (String)session.getAttribute("em");
          
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");
        PreparedStatement pst= con.prepareStatement("select * from bevent where applicantemail=?");
        
        pst.setString(1,em);
        
 
       ResultSet rs=pst.executeQuery();
        while(rs.next())
        {
            out.print("<br><br>"+rs.getString(4));
            out.print("<br> Event Date is "+rs.getString(5));
        }        
    }
        
    
catch(Exception ett)
{
        response.sendRedirect("error.html");
}    
        
    
%>
            
<!--            <div class="box"></div>
            <div class="box"></div>-->

        </div>
        </div>
    </main>
</body>

</html>