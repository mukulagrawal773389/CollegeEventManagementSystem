<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "C:\\Users\\D:\\ayush bhaiya project\\Event Orientation\\web\\Event\\ab");  
//out.print("File Uploaded");


  
%> 
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


    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="quaries.css">
</head>

<body> 
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
        <div class="main_box">

    <form action="upload.jsp" method="post" enctype="multipart/form-data">  
        <span style="color: #333; font-size: 3rem;    font-family: 'Rubik', sans-serif;"> File Uploaded Successfully ....</span><br/>  
<a style="padding: 1rem 2rem; text-decoration: none; color: #fff; background: #cf3bad; border-radius: 19px;     font-family: 'Rubik', sans-serif;" href="upload_crti.jsp"> Go back </a>
</form>
             
        </div>
    </main>
</body>