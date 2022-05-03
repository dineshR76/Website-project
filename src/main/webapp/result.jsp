<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
    <title>Result</title>
<link rel="stylesheet" href="csss/result.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

</head>
<body>
    <header>
      <nav>
        <div class="row clearfix">
            <ul class="main-nav" animate slideInDown>
                <li><a href="index.php"><b>HOME</b></a></li>
                <li><a href="admin/aboutus.php"><b>ABOUT</b></a></li>
                <li><a href="admin/contactus.php"><b>CONTACT</b></a></li>
                <li><a href="login.php"><b>ADMIN LOGIN</b></a></li>
          </ul>
        </div>
      </nav>
      <div class="main-content-header"> 
        <form method="post" action="result.php">
       
          <table class="table">
              <img src="dataimg/<?php  echo $data['u_image']; ?>" class="image2" /> 
              
              <tr>
                <c:forEach var="x" items="${ list1 }">
              <th>Name :</th>
                <td>${x.fname}</td>
              </tr>
               </c:forEach>
              
              <tr>
              <th>Class :</th>
              <td>${x.cname}</td>
              </tr>
              <tr>
              <th>Roll No :</th>
              <td>${x.rollno}</td>
              </tr>
              <tr>
              <th>Father Name :</th>
              <td>${x.father}</td>
              </tr>
              <tr>
              <th>City Name :</th>
              <td>${x.village}</td>
              </tr>
              
          </table>
         
          
          <table class="table2">
              <tr>
               <th>Suject</th><th>Total</th><th>Max. Marks</th>
              </tr>
              <tr>
                  
              <th>Hindi</th>
                <th>${x.hindi}</th>
                <th>100</th>
              </tr>
              <tr>  
              <th>English</th>
                <th>${x.english}</th>
                <th>100</th>
              </tr>
              <tr>
              <th>Math</th>
                  <th>${x.math}</th>
              
                  <th>100</th>
              </tr>
              <tr>
              <th>Physics</th>
                  <th>${x.physics}</th>
                  
                  <th>200</th>
              </tr>
              <tr>
              <th>Chemistry</th>
                  <th>${x.chemistry}</th>
                 
                  <th>200</th>
              </tr>
              <tr>
              <th>Total</th>
                  <th>
                   <?php echo $data2['u_hindi1']+$data2['u_english1']+$data2['u_math1']+$data2['u_physics1']+$data2['u_chemestry1']; ?>
                  </th>
         
                  
                  <th><span class="colorchange"><?php echo $all=$total1+$total2+$total3+$total3+$total4+$total5; ?></span></th>
                 
                  <th>1000</th>
                  
              </tr>    
             
          </table>
<!--              <h1>You Are <span class="colorchange1"><?php  -->
<!--                         if($all<=500)  -->
<!--                         { -->
<!--                             echo "Fail"; -->
<!--                         } -->
<!--                        else -->
<!--                        { -->
<!--                            echo"Pass"; -->
<!--                        } -->
<!--                       ?></span></h1> -->
            <marquee scrollamount="5"><p>Your Result is Declared. Kindly check your marks and in case of any discrepany contact the admin. </p>
                </marquee>
       </form>
       
      </div>
    </header>
    
</body>
</html>
<!-- <?php -->
}
else
{
<!-- ?> -->
<!-- <script> -->
// alert('Record Not found');
//     window.open('index.php','_self');
<!-- </script> -->
<!-- <?php -->
}

}

<!-- ?> -->
<style>
    *{
    margin:0px;
    padding:0px;
    box-sizing: border-box;
}
body{
    font-size: 30px;
    font-weight: 600;
    overflow-x: hidden;
    color: black;
    font-family: 'Flamenco', cursive;
}
header{
    background-image:linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0)),url(../image/result.jpg);
    height:100vh;
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
    color: red;
    font-weight: 1000;
}
.search{
    margin-left:670px;
    margin-top:20px;
}
.name1{
    padding-right: 5px;
}
.standered1{
   padding-right: 15px;
}
.submit{
    width:55px;
}
.main-content-header{
    border-top: 3px solid black;
}
.table{
    margin-left:400px;
    margin-top: 20px;
    float:left;    
}
.table tr{
    font-size:20px;
    margin-left: 330px;
    
}
.image2{
    width:90px;
    height:120px;
    margin-top: 20px;
    margin-left: 90px;
}
.table2 th{
    border-top: 1px solid transparent;
    width: 6%;
    font-size: 19px;
   
}
h1{
    margin-left: 490px;
}
.table2{
    margin-top: 20px;
    border-top: 3px dashed black;
    border-bottom: 3px dashed black;
    
}
.colorchange{
    animation: colorchange 2s infinite;
    font-size: 24px;
    
}
@keyframes colorchange{
    0%{color:#cc0066;}
    25%{color:#0000ff;}
    75%{color:#cc0066;}
    100%{color: #0000ff;}
}
.colorchange1{
    animation: colorchange1 2s infinite;
    font-size: 44px;
    
}
@keyframes colorchange1{
    0%{color:red;}
    25%{color:green;}
    75%{color:#009900}
    100%{color:#ff6600;}
}
p{
    margin-top: 20px;
    
}
</style>