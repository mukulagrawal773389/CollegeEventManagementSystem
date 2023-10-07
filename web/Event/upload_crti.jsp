<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Upload Certificate </title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <link rel="stylesheet" href="css/upload_crti.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="quaries.css">
</head>

<body>
    <menu>
        <p class="heading-pri"> Admin Dashboard </p>
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
            <a href="message.jsp">
                <ion-icon class="icons" name="chatbox-ellipses-outline"></ion-icon>
            </a>
            <a href="message.jsp" class="index-item"> Upload Certificate </a>
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
        <h1 id="main-h1" class="heading-pri"> Hello Admin </h1>
        <p class="sub-heading"> Welcom Back! </p>

    <form action="upload.jsp" method="post" enctype="multipart/form-data">  
        <span style="font-family: 'Rubik', sans-serif; color: #333; font-size: 3rem;">Select File:</span><input style="font-family: 'Rubik', sans-serif; margin-top: 2rem; font-size: 1.4rem" type="file" name="fname"/><br/>  
<input style="padding: 1.2rem 3rem;cursor: pointer; font-family: 'Rubik', sans-serif; color: #fff; background: #cf3bad; border-radius: 9px; border-style: none;" type="submit" src="MainUpload.png"/>  
</form>
             
        </div>
    </main>
</body>

</html>