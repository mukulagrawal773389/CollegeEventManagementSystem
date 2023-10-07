<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Add Result </title>

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
    <main>
    <section class="section-login">
        <div class="container">
            <div class="cta">
                <div class="cta-text-box">
                    <h2 class="heading-login"> Add Results </h2>
                    <p class="cta-text">
                        Welcome, Please Add your Result.
                    </p>                
<!--                    <div>
                    <div><a class="btn" href="AEvent.jsp"> Add Event</a></div>
                    </div>-->

                    <form class="cta-form" name="F" action="Addresult.jsp" method="post">

                        <div>
                            <label for="EID">Event ID</label>

                            
                            <%@page import="java.sql.*" %>
        <%
   try
{
response.setContentType("text/html");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select eventid from event;");

ResultSet rs=pst.executeQuery();
out.print("<select name='EID'>");

while(rs.next())
{
   out.print("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");

}
out.print("</select>");

}
catch(Exception ett)
{
out.print(ett);
}

%>
                            
                            
                            
                        </div>
                        
                        <div>
                            <label for="EID">Event Type</label>
                            <input class="input" id="Etype" type="text" name="Etype" placeholder="Event Type" required />
                        </div>

                        <div>
                            <label for="Ename"> Event Name </label>
                            <input class="input" id="Ename" type="text" name="Ename" required placeholder="Event name" />
                        </div>

                        <div>
                            <label for="Edate"> Event Date </label>
                            <input class="input" id="Edate" type="date" name="Edate" required/>
                        </div>
                        
                        <div>
                            <label for="WID"> Winner ID </label>
                                    <%
   try
{
response.setContentType("text/html");
Class.forName("com.mysql.jdbc.Driver");

Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/event","root","");

PreparedStatement pst=con.prepareStatement("select applicantEmail from bevent;");

ResultSet rs=pst.executeQuery();
out.print("<select name='WID'>");

while(rs.next())
{
   out.print("<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>");

}
out.print("</select>");

}
catch(Exception ett)
{
out.print(ett);
}

%>
                        </div>
                        
                        <div>
                            <label for="Wname"> Winner Name</label>
                            <input class="input" id="Eend" type="text" name="Wname" placeholder="John Smith" required />
                        </div>
                        
                        <div>
                            <label for="rank"> Rank</label>
                            <input class="input" id="rank" type="number" name="rank" placeholder="1st.." required />
                        </div>
                        

                        
<!--                        <div>
                            <label for="price3"> Price3 </label>
                            <input class="input" id="price3" type="number" name="price3" placeholder="price3" required />
                        </div>
                        
                        <div>
                            <label for="OrgBy"> Organised By </label>
                            <input class="input" id="OrgBy" type="text" name="OrgBy" placeholder="Robert" required />
                        </div>-->

                        <!-- <label for="password"> Password </label>
                            <input id="password" type="password" required />
                        </div> -->
                        <!-- <button class="btn-login"> Login </button> -->
                        <!-- <div>
                            <label for="message">Massage</label>
                            <textarea name="Massage" id="massage" cols="1" rows="1" placeholder="Write here">
                    </textarea> -->
                        <!-- <input
                      id="Message"
                      type="me"
                      placeholder="me@example.com"
                      required
                    /> -->
                        <!-- </div> -->

                        <!-- <div>
                    <label for="select-where">Where did you hear from us?</label>
                    <select id="select-where" required>
                        <option value="">Please choose one option:</option>
                        <option value="friends">Friends and family</option>
                        <option value="youtube">YouTube video</option>
                        <option value="podcast">LinkedIn</option>
                        <option value="ad">Facebook ad</option>
                        <option value="others">Others</option>
                    </select>
                </div> -->

                        <!-- <div class="rem">
                            <label for="chechbox">
                                <input class="ckechbox" type="checkbox"> I agree all statements in
                                <a href="#" style=" text-decoration: none; color: inherit;">
                                    <u>Term & Condition</u></a>
                            </label>
                        </div> -->
                        <button class="btn-login"> Add </button>
<!--                        <a href="login.html" style="font-size: 1.6rem; text-decoration: none; color: inherit;"> I am
                            already
                            in.</a>-->
                    </form>
                </div>
                <div class="cta-img-box" role="img" aria-label="Woman enjoying food"></div>
            </div>
        </div>
    </section>
    </main>
</body>

</html>
