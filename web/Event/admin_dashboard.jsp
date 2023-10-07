<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> admin_dashboard </title>

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
            <a href="admin_login.html">
                <ion-icon class="icons" name="log-out-outline"></ion-icon>
            </a>
            <a href="admin_login.html" class="index-item">Logout</a>
        </div>
    </section>
    <main>
        <div class="main_box">
        <h1 id="main-h1" class="heading-pri"> Hello <%= session.getAttribute("em") %> </h1>
        <p class="sub-heading"> Welcome Back! </p>
        <div class="content">
            <div class="box box1">
                <div class="std-icon">
                    <ion-icon name="people-outline"></ion-icon>
                </div>
                <div class="std-info">
                    <p class="std-text"> Total Student
                    <p class="std-no"> 445 </p>
                    <p class="std-pst">
                        <ion-icon name="trending-up-outline"></ion-icon> 40% Incresement
                    </p>
                </div>
            </div>
            <div class="box box2">
                <div class="std-icon">
                    <ion-icon name="person-add-outline"></ion-icon>
                </div>
                <div class="std-info">
                    <p class="std-text"> New Student
                    <p class="std-no"> 155 </p>
                    <p class="std-pst">
                        <ion-icon name="trending-up"></ion-icon> 45% Incresement
                    </p>
                </div>
            </div>
            <div class="box box3">
                <div class="std-icon">
                    <ion-icon name="calendar-clear"></ion-icon>
                </div>
                <div class="std-info">
                    <p class="std-text"> Events
                    <p class="std-no"> 52 </p>
                    <p class="std-pst">
                        <ion-icon name="trending-up-outline"></ion-icon> 85% Incresement
                    </p>
                </div>
            </div>
            <div class="box box4">
                <div class="std-icon">
                    <ion-icon name="caret-forward-circle"></ion-icon>
                </div>
                <div class="std-info">
                    <p class="std-text"> Student Attendence
                    <p class="std-no"> 78% </p>
                    <p class="std-pst">
                        <ion-icon name="trending-up-outline"></ion-icon> 10% Incresement
                    </p>
                </div>
            </div>
        </div>
        </div>
    </main>
</body>

</html>