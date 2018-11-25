<%@ page import="controller.model.User"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	User user = null;
	try {
		user = (User) request.getAttribute("users");
	} catch (Exception e) {

	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Servicios</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/courses_styles.css">
<link rel="stylesheet" type="text/css"
	href="styles/courses_responsive.css">
</head>
<body>

	<div class="super_container">

		<!-- Header -->

		<header class="header d-flex flex-row">
			<div class="header_content d-flex flex-row align-items-center">
				<!-- Logo -->
				<div class="logo_container">
					<div class="logo">
						<img src="images/logo.png" alt=""> <span>conectAQP</span>
					</div>
				</div>

				<!-- Main Navigation -->
				<nav class="main_nav_container">
					<div class="main_nav">
						<ul class="main_nav_list">
							<%
								if (user == null) {
							%>
							<li class="main_nav_item"><a href="/index"></a></li>
							<li class="main_nav_item"><a href="/us"></a></li>
							<li class="main_nav_item"><a href="/service"></a></li>
							<li class="main_nav_item"><a href="/promo"></a></li>
							<li class="main_nav_item"><a href="/contact	"></a></li>
							<%
								} else {
							%>
							<li class="main_nav_item"><a href="/index">Inicio</a></li>
							<li class="main_nav_item"><a href="/us">Nosotros</a></li>
							<li class="main_nav_item"><a href="/services">Servicios</a></li>
							<li class="main_nav_item"><a href="/promo">Promociones</a></li>
							<li class="main_nav_item"><a href="/contact">Contactanos</a></li>
							<%
								}
							%>
						</ul>
					</div>
				</nav>
			</div>
			<div
				class="header_side d-flex flex-row justify-content-center align-items-center">
				<%
					if (user != null) {
				%>
				<span><a href="/perfil?id=<%=user.getId()%>">Perfil</a></span> <span><a
					href="/logout">Cerrar Sesion</a></span>
			</div>
			<%
				} else {
			%>
			<span><a href="/login">Ingresar</a></span>
			<%
				}
			%>
		
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
					<li class="menu_item menu_mm"><a href="index.html">Inicio</a></li>
					<li><a href="/perfil">Perfil</a></li>
					<li><a href="/logout">Cerrar Sesion</a></li>
					<li class="menu_item menu_mm"><a href="#">Nosotros</a></li>
					<li class="menu_item menu_mm"><a href="courses.html">Servicios</a></li>
					<li class="menu_item menu_mm"><a href="elements.html">Promociones</a></li>
					<li class="menu_item menu_mm"><a href="news.html">Contacto</a></li>
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
			<h1>Servicios</h1>
		</div>
	</div>

	<!-- Popular -->

	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>Servicios Populares</h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_1.jpg"
							alt="https://unsplash.com/@kellybrito">

						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>X</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_2.jpg"
							alt="https://unsplash.com/@cikstefan">

						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>Y</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_3.jpg"
							alt="https://unsplash.com/@dsmacinnes">

						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>Z</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_4.jpg"
							alt="https://unsplash.com/@kellitungay">

						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>1</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_5.jpg"
							alt="https://unsplash.com/@claybanks1989">

						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>2</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_6.jpg"
							alt="https://unsplash.com/@element5digital">
						<!--  <div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Advanced Photoshop</a></div>
							<div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
						</div>-->
						<div class="price_box d-flex flex-row align-items-center">

							<div class="course_author_name">
								Plan <span>3</span>
							</div>
							<div
								class="course_price d-flex flex-column align-items-center justify-content-center">
								<span>$$$</span>
							</div>
						</div>
					</div>
				</div>







			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">




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
	<script src="plugins/easing/easing.js"></script>
	<script src="js/courses_custom.js"></script>

</body>
</html>