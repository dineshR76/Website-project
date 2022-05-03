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
        <h2>Student Records</h2>
        <form>
        <table>
   <tr>
           <th class="name_h1">Rollno </th> 
           <th class="contact_h1">hindi </th> 
           <th class="contact_h1">English</th>
           <th class="contact_h1">Maths</th>
           <th class="massage_h1">Physics</th>
           <th class="contact_h1">Chemistry</th>
         </tr>
         
  <c:forEach var="x" items="${ list }">
  <form>
  <tr>
            <th class="name_h">${x.rollno}</th> 
            <th class="email_h">${x.hindi}</th> 
            <th class="contact_h">${x.english}</th> 
            <th class="contact_h">${x.math}</th> 
            <th class="contact_h">${x.physics}</th>
            <th class="contact_h">${x.chemistry}</th> 
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
<div class="editmark">
        </form>
        <form method="post" action="updatemarks2">
            <h2>EDIT Exam mark</h2>
        
            
            
        <table class="table1">
           
           <tr>
          <th>Roll No</th>    <th>Hindi</th>   <th> English </th> <th>Math</th>
           </tr>
           <tr>
           <td><input type='text' name='rollno' placeholder='enter above same rollno' required/></td>
               <td><input type='text' name='hindi' placeholder='Hindi' required/></td>
               <td><input type='text' name='english' placeholder='English' required/></td>
               <td><input type='text' name='math' placeholder='Math' required/></td>
           </tr>
           </table>
           <table class="table2">
           <tr>
               <th>Physics</th>   <th>Chemistry</th> 
           </tr>
               <tr>
               
               <td><input type='text' name='physics' placeholder='Physics' required/></td>
               <td><input type='text' name='chemistry' placeholder='Chemistry' required/></td>
               
           </tr>
          
              <tr>
                  <td align="center" colspan="2"><button class="submit">Submit</button></td>   
                  </tr>
          
          
          </table>
       
     
     </form>
    </div>
        </div>
    </header>
    
</body>
</html>

<style>
    .editmark
    {
        background-color: aliceblue;
    }
    .editmark th{
        background-color: aqua;
    }
    .editmark .submit
    {
       width: 150px;
       margin-bottom: 5px;
       margin-top: 10px;
    }
.rollno
{

align-items: center;
margin-left: 100px;
}
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