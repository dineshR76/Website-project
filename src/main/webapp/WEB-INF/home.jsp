<html>
    <head>
        <title>
           CodePlanet college
        </title>
        <link rel="stylesheet" href="slide.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
      	<title>Footer design</title>
	    <link rel="stylesheet" href="ppp.css">
	      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>

        <header>
          <div class="header">
            <h1 id="logo"> <a href="about.html"><img src="images/icon.png" alt="logo"/></a>Codeplanet College of Arts and Sciences</h1>
          </div>
          
         
          <marquee>Admissions open<span class="fa-solid fa-hand-point-right" style="margin-left:18px"></span><a href="form" style="margin-left:18px">click here to apply</a></marquee>
            <div id="grad1">
               <!-- <div id="grad1">
            here we insert img -->
              <nav>
                <ul>
                    <li><a href="about">About us</a></li>
                    <li><a href="courses">Courses</a></li>
                    <li><a href="examcell">Exam Cell</a></li>
                    <li><a href="campus">Campus</a></li>
                    <li><a href="">Contact us</a></li>
                </ul>
            </nav>
            </div>
            </header>

         <!-- Slideshow container -->
<div class="slideshow-container">

    <!-- Full-width images with number and caption text -->
    <div class="mySlides fade">
      <div class="numbertext">1 / 3</div>
      <img src="images/img1.webp" style="width:100%">
    </div>
  
    <div class="mySlides fade">
      <div class="numbertext">2 / 3</div>
      <img src="images/img2.jpg" style="width:100%">
    </div>
  
    <div class="mySlides fade">
      <div class="numbertext">3 / 3</div>
      <img src="images/img3.jpg" style="width:100%">
    </div>
  
    <!-- Next and previous buttons -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
  </div>
  <br>
  
  <!-- The dots/circles -->
  <div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span>
    <span class="dot" onclick="currentSlide(2)"></span>
    <span class="dot" onclick="currentSlide(3)"></span>
  </div> 
  <div class="box">
    <p id="b1">NAAC accredited A+</p>
    <p id="b2">600+ Practitioner & Academic Faculty</p>
    <p id="b3">480+ hours Of live online lectures</p>
    <p id="b4">Over 300+ Hiring Partners</p>
  </div>
 <div class="ready">
   <div is="head">
   <h1>Be Future-Ready with CPCAS Global</h1>
   <p>Take a leap towards the next stage of your career with the MBA program and many others that has been thoughtfully designed for working professionals. Unlike a correspondence program, a distance education program by CPCAS Global supplements your learning with live online lectures & study material. All programs are also structured and scheduled to allow for a fulfilling work, life & study balance.</p>
  </div>
</div>
  


<div class="placement">
  <h2>Placement process</h2>
  <div clqass="list">
  <p>Process Driven Placement System - Over time our placement process has been refined to make recruitment as simple as possible for students and companies alike. The life cycle of the placement process is:</p>
  <ul>
    <li>We contact companies about 2 months ahead of the placement schedule.</li>
    <li>Companies provide us with the necessary data through a Job announcement form.</li>
    <li>We scrutinise the requirements and then send a formal invitation to the companies.</li>
    <li>We fix a mutually convenient date and time for the presentation & selection process.</li>
    <li>We announce the visit along with the details provided by the company in the announcement form to the students.</li>
    <li>We ask eligible students who are interested in the job to apply for the job a week before the visit.</li>
    <li>We provide essential details of applicants to the company.</li>
    <li>The company re-confirms travel plan a week before the allocated visit date.</li>
    <li>We book accommodation for company (on payment basis) at the Guesthouse within the campus.</li>
    <li>We book a presentation hall and a student volunteer is allocated to take care of the logistics on campus.</li>
    <li>We announce the list of selected candidates once the company finalises it.</li>
    <li>Students sign offer letter and a copy is forwarded to the company.</li>
    <!-- Some of the salient points of the placement process are: -->
<li>No registration charges</li>
<li>Rooms with LCD projectors and computers are provided for conducting pre-placement talks.</li>
<li>Rooms for aptitude tests, group discussions and interviews are also made available</li>
<li>A team of dedicated placement committee volunteers work to ensure simpler logistics and all other related issues regarding campus placements.</li>
  </ul>
</div>
</div>

<footer>
  <footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<h4>Links</h4>
					<ul>
						<li><a href="home.html">Home</a></li>
							<li><a href="about.html">About us</a></li>
								<li><a href="courses.html">Courses</a></li>
									<li><a href="campus.html">Campus</a></li>
					</ul>
				</div>
					<div class="footer-col">
					<h4>Contact us</h4>
					<ul id="contact">
						<p>college@codeplanet.co.in</p><br>
            <p>+91-8452187618</p><br>
					</ul>
				</div>	
				<div class="footer-col">
					<h4>Follow Us</h4>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a>
						<a href="#"><i class="fab fa-twitter"></i></a>
						<a href="#"><i class="fab fa-instagram"></i></a>
						<a href="#"><i class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
		</div>
</footer>






    </body>
</html>
<script>
    let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
} 
</script>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@300&display=swap');
  
  
  nav ul{
    display:flex;
    justify-content: space-between;
    list-style-type: none;
    background-color: black;
    line-height: 50px;

}
nav ul li
{
    cursor: pointer;

}
nav ul li a:hover{
  color:aquamarine;
  font-size: 14px;
}
a
{
    color:white;
}

*{
    padding: 0 0.05rem;
    margin: 0;
}
.header h1{
  text-align: center;
  color: darkblue;
  background-color: beige;
  font-size: 45px;
}
.header img {
  float: left;
  width: 120px;
  height: 52px;
}
/* .header h1 {
  position: relative;
  top: 18px;
  left: 10px;
} */




/* slideshow css code */
* {
    box-sizing:border-box
}

/* Slideshow container */
.slideshow-container {
  max-width: 1300px;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .45}
  to {opacity: 1}
}
marquee
{
  font-size: 20px;
  background-color: #E0FFFF;
}
marquee a
{
  color: goldenrod;
}
marquee a:hover{
  font-size: 14px;
}

/* Boxes */

.box{
  display: flex;
  justify-content: space-between;
}
.box #b1
{
  flex-basis: 15%;
 margin-top:0;
 display:flex;
 padding: 20px 12px;
 background-color: aquamarine;
 box-sizing: border-box;
 border-radius: 10px;
 transition: 0.5s;
 margin-bottom: 5%;
 font-family: 'Oswald', sans-serif;
 font-size: larger;

}
.box #b1:hover{
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.74);
}

.box #b2
{
  flex-basis: 15%;
 margin-top:0;
 display:flex;
 padding: 20px 12px;
 background-color: rgb(192, 72, 56);
 box-sizing: border-box;
 border-radius: 10px;
 width:fit-content;
 transition: 0.5s;
 margin-bottom: 5%;
}
.box #b2:hover{
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.74);
}
.box #b3
{
  flex-basis: 15%;
 margin-top:0;
 display:flex;
 padding: 20px 12px;
 background-color: rgb(255, 123, 0);
 box-sizing: border-box;
 border-radius: 10px;
 width:fit-content;
 transition: 0.5s;
 margin-bottom: 5%;
}
.box #b3:hover{
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.74);
}
.box #b4
{
  flex-basis: 15%;
 margin-top:0;
 display:flex;
 padding: 20px 12px;
 background-color: rgb(4, 196, 255);
 box-sizing: border-box;
 border-radius: 10px;
 width:fit-content;
 transition: 0.5s;
 margin-bottom: 5%;
}
.box #b4:hover{
  box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.74);
}

.ready
{
  text-align: center;
  padding: 100px 100px;
  border-radius:50%;
  box-sizing: border-box;
  background-color: white;
  margin-bottom: 5%;
}
.ready h1{
  color: #86bccc;
}
.ready:hover{
  font-size: 30px; 
}


@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
body{
	line-height: 1.5;
	font-family: 'Poppins', sans-serif;
}
*{
	margin:0;
	padding:0;
	box-sizing: border-box;
}
.container{
	max-width: 1000px;
	
	margin: auto;
}
.row{
	display: flex;
	flex-wrap: wrap;
}
ul{
	list-style: none;
}
.footer{
	background-color: #24262b ;
	padding: 90px,0;
}
.footer-col{
	width: 25%;
	padding: 0 15px;
}
.footer-col h4{
	font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
  margin-top: 5%;
	
}
.footer-col h4::before{
	content: '';
	position: absolute;
	left: 0;
	bottom: -10px;
	background-color: purple;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}
.footer-col ul li:not(:last-child){
	margin-bottom: 10px;

}
.footer-col ul li a{
	font-size: 16px;
	text-transform: capitalize;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}
.footer-col ul li a:hover{
	color: #ffffff;
	padding-left: 8px;

}
.footer-col .social-links a{
	display: inline-block;
	height: 30px;
	width: 30px;
	background-color: green;
	margin: 0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;


}

.footer-col .social-links a:hover{
	color: #24262b;
	background-color: #ffffff;
}

.container .row .footer-col #contact p
{
  font-size: 16px;
	text-transform: capitalize;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.5s ease;
}
.container .row .footer-col #contact p:hover{
  color: #ffffff;
	padding-left: 8px;
}
.placement
{
  margin-left: 5px;
 width: 75%;
 padding: 2rem 3rem;
 background-image: url("images/giphy.gif");
 background-repeat: no-repeat;
 background-size: cover;
 color: #E0FFFF;
 margin-bottom: 5%;
 background-position: center;

}
  
  </style> 
  
  
  
  
  
