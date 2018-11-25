<%@ page import="controller.model.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   User user=null;
   try{
	   user= (User)request.getAttribute("users");}
	   catch(Exception e){
	   
	   }
%> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contactanos</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/login_styles.css">
<link rel="stylesheet" type="text/css"
	href="styles/contact_responsive.css">
</head>
<body>

	<div class="super_container">

		<!-- Header -->

		<header class="header d-flex flex-row">
			<div class="header_content d-flex flex-row align-items-center">
				<!-- Logo -->
				<div class="logo_container">
					<div class="logo">
						<img src="images/logo.png" alt=""> <span>conectaqp</span>
					</div>
				</div>

				<!-- Main Navigation -->
				<nav class="main_nav_container">
					<div class="main_nav">
						<ul class="main_nav_list">
								<%if(user==null) {%>
						<li class="main_nav_item"><a href="/index"></a></li>
						<li class="main_nav_item"><a href="/us"></a></li>
						<li class="main_nav_item"><a href="/service"></a></li>
						<li class="main_nav_item"><a href="/promo"></a></li>
						<li class="main_nav_item"><a href="/contact	"></a></li>
						%>
					<%}else{ %>
						<li class="main_nav_item"><a href="/index">Inicio</a></li>
						<li class="main_nav_item"><a href="/us">Nosotros</a></li>
						<li class="main_nav_item"><a href="/services">Servicios</a></li>
						<li class="main_nav_item"><a href="/promo">Promociones</a></li>
						<!--  <li class="main_nav_item"><a href="/news">news</a></li>-->
						<li class="main_nav_item"><a href="/contact">Contactanos</a></li><%} %>
					
						</ul>
					</div>
				</nav>
			</div>
			<div
				class="header_side d-flex flex-row justify-content-center align-items-center">
				<!-- <img src="images/phone-call.svg" alt=""> -->
				<span><a href="/login">INGRESAR</a></span>
			</div>

			<!-- Hamburger -->
			<div class="hamburger_container">
				<i class="fas fa-bars trans_200"></i>
			</div>

		</header>

		<!-- Menu -->
		<div class="menu_container menu_mm">

			<!-- Menu Close Button -->
			<div class="menu_close_container">
				<div class="menu_close"></div>
			</div>

			<!-- Menu Items -->
			<div class="menu_inner menu_mm">
				<div class="menu menu_mm">
					<ul class="menu_list menu_mm">
						<li class="menu_item menu_mm"><a href="index.html">Inicio</a></li>
						<li class="menu_item menu_mm"><a href="/us">Nosotros</a></li>
						<li class="menu_item menu_mm"><a href="/service">Servicios</a></li>
						<li class="menu_item menu_mm"><a href="/promotion">Promociones</a></li>
						<!-- <li class="menu_item menu_mm"><a href="#">News</a></li> -->
						<li class="menu_item menu_mm"><a href="/contact">Contactanos</a></li>
					</ul>

					<!-- Menu Social -->

					<div class="menu_social_container menu_mm">
						<ul class="menu_social menu_mm">
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fab fa-pinterest"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fab fa-linkedin-in"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fab fa-instagram"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fab fa-facebook-f"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fab fa-twitter"></i></a></li>
						</ul>
					</div>

					<div class="menu_copyright menu_mm">Colorlib All rights
						reserved</div>
				</div>

			</div>

		</div>

		<!-- Home -->

		<div class="home">
			<div class="home_background_container prlx_parent">
				<div class="home_background prlx"
					style="background-image: url(images/slider_background.jpg)"></div>
			</div>
			<div class="home_content">
				<h1>Entra</h1>
			</div>
		</div>

		<!-- Contact -->

		<div class="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">

						<!-- Contact Form -->

						<div class="contact_form_container">
							<form action="/login"	method="post" >
								<input id="contact_form_name"
									class="input_field contact_form_name" type="email" name="email"
									placeholder="Gmail" pattern="[a-zA-Z ]+"
									data-error="Escriba su nombre.">
								<input
									class="input_field contact_form_name" type="password"
									placeholder="contraseña" name="password" 
									required="required">
							
								<button id="contact_send_btn" type="submit"
									class="contact_send_btn trans_200" value="Submit">Entrar</button><br>
								<a  href="/register"  >Registrarse</a>
	
							</form>
						</div>









						<!-- <table border="0" cellspacing="1" cellpadding="5"
							bgcolor="#CCCCCC">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">DNI</span>
								</div>
								<input type="text" name="dni" pattern="[0-9]{8}" required="">
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Nombre</span>
								</div>
								<input type="text" name="name" pattern="[a-zA-Z ]+" required>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Apellido</span>
								</div>
								<input type="text" name="apellido" pattern="[a-zA-Z ]+"
									required="">
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Email</span>
								</div>
								<input type="email" name="email" required="">
							</div>
							<button type="submit" class="btn btn-secondary btn-sm">Submit</button>
						</table> -->

					</div>
					<!--
				<div class="col-lg-4">
					<div class="about">
						<div class="about_title">Join Courses</div>
						<p class="about_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum. Etiam eu purus nec eros varius luctus. Praesent finibus risus facilisis ultricies. Etiam eu purus nec eros varius luctus.</p>

						<div class="contact_info">
							<ul>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Blvd Libertad, 34 m05200 Arévalo
								</li>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									0034 37483 2445 322
								</li>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>hello@company.com
								</li>
							</ul>
						</div>

					</div>
				</div>
-->
				</div>

				<!-- Google Map -->

				<!-- <div class="row">
					<div class="col">
						<div id="google_map">
							<div class="map_container">
								<div id="map"></div>
							</div>
						</div>
					</div>
				</div> -->

			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="container">

				<!-- Newsletter 

			<div class="newsletter">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>Subscribe to newsletter</h1>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col text-center">
						<div class="newsletter_form_container mx-auto">
							<form action="post">
								<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-center">
									<input id="newsletter_email" class="newsletter_email" type="email" placeholder="Email Address" required="required" data-error="Valid email is required.">
									<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>-->

				<!-- Footer Content 

			<div class="footer_content">
				<div class="row">
-->
				<!-- Footer Column - About
					<div class="col-lg-3 footer_col">
 -->
				<!-- Logo 
						<div class="logo_container">
							<div class="logo">
								<img src="images/logo.png" alt="">
								<span>course</span>
							</div>
						</div>

						<p class="footer_about_text">In aliquam, augue a gravida rutrum, ante nisl fermentum nulla, vitae tempor nisl ligula vel nunc. Proin quis mi malesuada, finibus tortor fermentum, tempor lacus.</p>

					</div>-->

				<!-- Footer Column - Menu 

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Menu</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="index.html">Home</a></li>
								<li class="footer_list_item"><a href="#">About Us</a></li>
								<li class="footer_list_item"><a href="courses.html">Courses</a></li>
								<li class="footer_list_item"><a href="news.html">News</a></li>
								<li class="footer_list_item"><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
-->
				<!-- Footer Column - Usefull Links

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Usefull Links</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="#">Testimonials</a></li>
								<li class="footer_list_item"><a href="#">FAQ</a></li>
								<li class="footer_list_item"><a href="#">Community</a></li>
								<li class="footer_list_item"><a href="#">Campus Pictures</a></li>
								<li class="footer_list_item"><a href="#">Tuitions</a></li>
							</ul>
						</div>
					</div>
 -->
				<!-- Footer Column - Contact 

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Contact</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Blvd Libertad, 34 m05200 Arévalo
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									0034 37483 2445 322
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>hello@company.com
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>-->

				<!-- Footer Copyright -->

				<div
					class="footer_bar d-flex flex-column flex-sm-row align-items-center">

					<div class="footer_social ml-sm-auto">
						<ul class="menu_social">
							<li class="menu_social_item"><a href="#"><i
									class="fab fa-pinterest"></i></a></li>
							<li class="menu_social_item"><a href="#"><i
									class="fab fa-linkedin-in"></i></a></li>
							<li class="menu_social_item"><a href="#"><i
									class="fab fa-instagram"></i></a></li>
							<li class="menu_social_item"><a href="#"><i
									class="fab fa-facebook-f"></i></a></li>
							<li class="menu_social_item"><a href="#"><i
									class="fab fa-twitter"></i></a></li>
						</ul>
					</div>
				</div>

			</div>
		</footer>

	</div>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/greensock/TweenMax.min.js"></script>
	<script src="plugins/greensock/TimelineMax.min.js"></script>
	<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="plugins/greensock/animation.gsap.min.js"></script>
	<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="js/contact_custom.js"></script>

</body>
</html>