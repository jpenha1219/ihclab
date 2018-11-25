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
%> <!DOCTYPE html>
<html lang="en">
<head>
<title>Promociones</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/elements_styles.css">
<link rel="stylesheet" type="text/css"
	href="styles/elements_responsive.css">
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
				<a href="/login"><span>INGRESAR</span></a>
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

					<div class="menu_copyright menu_mm">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
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
				<h1>Promociones</h1>
			</div>
		</div>

		<!-- Elements -->

		<div class="elements">

			<!-- Buttons -->
			<div class="buttons">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="elements_title">Aprovecha</div>
							<div class="buttons_container">
								<div class="button button_color_1 text-center trans_200">
									<a href="#">Promocion 1</a>
								</div>
								<div class="button button_color_2 text-center trans_200">
									<a href="#">Promocion 2</a>
								</div>
								<div class="button button_line_1 text-center trans_200">
									<a href="#">Promocion 3</a>
								</div>
								<div class="button button_line_2 text-center trans_200">
									<a href="#">Promocion 4</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>








		</div>
		<footer class="footer">
			<div class="container">

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
	<script src="plugins/progressbar/progressbar.min.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="js/elements_custom.js"></script>

</body>
</html>