<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>All Student Detail</title>
<link rel="stylesheet" href="../csss/allstudentdata.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

</head>
<body>
    <header>
      <nav>
        <div class="row clearfix">
            <ul class="main-nav" animate slideInDown>
                <li><a href="../index.php"><b>HOME</b></a></li>
                <li><a href="aboutus.php"><b>ABOUT</b></a></li>
                <li><a href="contactus.php"><b>CONTACT</b></a></li>
                <li class="logout"><a href="admindash.php"><b>ADMIN DASHBOARD</b></a></li>
                
          </ul>
        </div>
      </nav>
      <div class="main-content-header">
        <h2>Student Record</h2>
        <form>
        <table>
   <tr>
           <th class="name_h1">Name </th> 
           <th class="contact_h1">Class </th> 
           <th class="contact_h1">Roll No</th>
           <th class="contact_h1">Father Name</th>
           <th class="massage_h1">Mother Name </th>
           <th class="contact_h1">Mobile No</th>
           <th class="name_h1">Village</th>
            <th class="student_edit">Edit</th>
         </tr>
         
  <c:forEach var="x" items="${ list1 }">
  <form>
  <tr>
            <th class="name_h">${x.fname}</th> 
            <th class="email_h">${x.cname}</th> 
            <th class="contact_h">${x.rollno}</th> 
            <th class="contact_h">${x.father}</th> 
            <th class="contact_h">${x.mother}</th>
            <th class="contact_h">${x.mobile}</th> 
            <th class="massage_h">${x.village}</th> 
            <th class="student_class2"><a href="updatemark?rollno=${x.rollno}">Edit</a></th> 
<%--       <td>${x.fname}</td> --%>
<%--        <td>${x.cname}</td> --%>
<%--         <td>${x.rollno}</td> --%>
<%--          <td>${x.father}</td> --%>
<%--           <td>${x.mother}</td> --%>
<%--            <td>${x.mobile}</td> --%>
<%--             <td>${x.village}</td> --%>
  </tr>
  </form>
</c:forEach>
</table>
        </form>
        </div>
    </header>
</body>
</html>

<style>
    *{
        margin:0px;
        padding:0px;
        box-sizing: border-box;
    }
    body{
        font-size: 30px;
        overflow-x: hidden;
        color: black;
        font-family: 'Flamenco', cursive;
    }
    header{
        background-image:linear-gradient(rgba(0,0,0,0.2),rgba(0,0,0,0.2)),url(../image/plane.jpg);
        height:800px;
        background-size: cover;
        background-repeat: no-repeat;
    }
    .clearfix:after{
        content: " ";
        visibility: ;
        display: block;
        height: 9px;
        clear: both;
    }
    .row{
        max-width: 1180px;
        margin:0 auto;
    }
    .main-nav{
        float: right;
        margin-top: 30px;
    }
    .main-nav li{
        display: inline-block;
        list-style: none;
        margin-left: 40px;
    }
    .main-nav li a{
        padding: 5px 2px;
        color:#000;
        text-shadow:  #000 0px 0px 1px,   #000 0px 0px 1px,   #000 0px 0px 1px;
        text-decoration: none;
        text-transform: uppercase;
        font-size: 90%;
        font-weight: 100;
    }
    .main-nav li a:hover{
        color: yellow;
        font-weight: 1000;
    }
    h3{
        margin-left: 600px;
        margin-top: 10px;
    }
    .main-content-header{
        border-top: 3px solid black;
    }
    
    h2{
        font-size: 3rem;
        color: #cc0099;
        font-weight: 900;
        padding-left: 5rem;
        padding-top: 1rem;
        text-shadow: 2px 2px black;
    }
    /*table Heading*/
    table{
        margin-top:25px;
        margin-left: 50px;
        background-color: white;
       
    }
    .massage_h1{
        padding-left: 15px;
        font-size: 30px;
        color: black;
        border-top: 3px solid black;    
    }
    .id_h1{
        padding-left: 10px;
        padding-right: 10px;
        font-size: 30px;
        color: black;
        border-top: 3px solid black;
        border-left: 3px solid black;
    }
    .name_h1{
        padding-left: 15px;
        font-size: 30px;
        color: black;
        border-top: 3px solid black;
    }
    .email_h1{
        padding-left: 55px;
        font-size: 30px;
        color: black;
        border-top: 3px solid black;
        
    }
    .contact_h1{
        padding-left: 55px;
        padding-right: 20px;
        font-size: 30px;
        color: black;
        border-top: 3px solid black;
    }
    
    /*/////Inner Table Heading/////*/
    th{
        padding-left: 100px;
        
        border-bottom: 3px solid black;
        
        border-right: 3px solid black;
    }
    
    .massage_h{
        padding-top: 8px;
        padding-bottom: 8px;
        border-right: 3px solid black;
        padding-right: 35px;
        
        padding-left: 35px;
        
    }
    .id_h{
        padding-left: 10px;
        border-right: 3px solid black;
        padding-right: 15px;
        border-left: 3px solid black;
    }
    .name_h{
        padding-left: 15px;
        border-right: 3px solid black;
        padding-right: 35px;
    }
    .email_h{
        padding-left: 55px;
        border-right: 3px solid black;
        padding-right: 35px;
    }
    .contact_h{
        padding-left: 55px;
        border-right: 3px solid black;
        padding-right: 35px;
        
    }
</style>