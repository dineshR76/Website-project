<html>
<head>
    <title>Homepage</title>
<link rel="stylesheet" href="../csss/secondstep.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">

</head>
<body>
    <header>
      <nav>
        <div class="row clearfix">
            <ul class="main-nav" animate slideInDown>
                <li><a href="../index.php">Home</a></li>
                <li><a href="aboutus.php">About Us</a></li>
                <li><a href="contactus.php">Contact Us</a></li>
            </ul>
        </div>
      </nav>
      <div class="main-content-header">
          
          <form method="post" action="thirdstep">
              <h2>Step 2/2 : Add Exam mark</h2>
          
          <td><input type="text" name="rollno" class="rollno" required/></td>
          
              
              
          <table class="table1">
              <span> <h4 class="h_3">First Exam (A)</h4></span>
             <tr>
                <th>Hindi</th>   <th> English </th> <th>Math</th>
             </tr>
             <tr>
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
             <td align="center" colspan="2"><input type="submit" name="submit" value="Submit" class="submit"/></td>   
             </tr>
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
    color: white;
    font-family: 'Flamenco', cursive;
}
header{
    background-image:linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(../image/hand.jpg);
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
    color:#fff;
    text-decoration: none;
    text-transform: uppercase;
    font-size: 90%;
    font-weight: 100;
}
.main-nav li a:hover{
    color: yellow;
    font-weight: 1000;
}



.table{
    margin-left:650px;
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
    width:70px;
    height: 20px;
    background-color: rgb(189, 189, 189);
    margin-top: 10px;
}
.main-content-header{
    border-top: 2px solid white;
}
h2{
    margin-top: 15px;
    margin-bottom:25px;
    margin-left: 260px;
    color: yellow;
    font-weight: bolder;
    text-shadow: 3px 3px black;
}
.table1{
    margin-left: 200px;
    margin-top: 5px;
}
.table2{
    margin-left: 280px;
    margin-top: 15px;
}

.table3{
    margin-left: 260px;
    margin-top: 4px;
}
.table3{
    margin-top: 5px;
    
}
.table4{
    margin-top: 4px;
    margin-left: 200px;
}
.h3{
    margin-left: 370px;
    margin-top: 5px;
}
.h_3{
    margin-left: 370px;
    margin-top: 35px;
}
p{
    margin-left: 375px;
}
h4{
    margin-left: 285px;
}
.colorchange1{
    animation: colorchange1 2s infinite;
    margin-left: 35px;
}
@keyframes colorchange1{
    0%{color:#fff;}
    25%{color:#bf55ec;}
    75%{color:#fff;}
    100%{color:#bf55ec;}
}
.colorchange2{
    animation: colorchange2 2s infinite;
    margin-left: 35px;
}
@keyframes colorchange2{
    0%{color:#fff;}
    25%{color:red;}
    75%{color:blue;}
    100%{color:orange;}
}
.colorchange3{
    animation: colorchange3 2s infinite;
    margin-left: 35px;
}
@keyframes colorchange3{
    0%{color:#fff;}
    25%{color:#bf55ec;}
    75%{color:#fff;}
    100%{color:#bf55ec;}
}
.class{
    margin-left: 9px;
    background:transparent;
    color:white;
    text-align: center;
}
.rollno{
    margin-left: 5px;
    background:transparent;
    color:white;
    text-align: center;
}
</style>