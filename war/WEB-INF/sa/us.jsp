<%@ page import="controller.model.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   User user=null;
   try{
	   user = (User)request.getAttribute("users");}
	   catch(Exception e){
	   
	   }
%> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Course - News</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/news_styles.css">
<link rel="stylesheet" type="text/css" href="styles/news_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header d-flex flex-row">
		<div class="header_content d-flex flex-row align-items-center">
			<!-- Logo -->
			<div class="logo_container">
				<div class="logo">
					<img src="images/logo.png" alt="">
					<span>conectaqp</span>
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
					<%}else{%>
						<li class="main_nav_item"><a href="/index">Inicio</a></li>
						<li class="main_nav_item"><a href="/us">Nosotros</a></li>
						<li class="main_nav_item"><a href="/services">Servicios</a></li>
						<li class="main_nav_item"><a href="/promo">Promociones</a></li>
						<li class="main_nav_item"><a href="/contact">Contactanos</a></li><%} %>
					</ul>
				</div>
			</nav>
		</div>
		<div class="header_side d-flex flex-row justify-content-center align-items-center">
			<!-- <img src="images/phone-call.svg" alt=""> -->
			<%if(user!=null){ %>
			<span><a href="/perfil?id=<%=user.getId()%>")>Perfil</a></span>
			<span><a href="/logout">Cerrar Sesion</a></span>
		</div><%}
			else{
			%>
			<span><a href="/login">Ingresar</a></span>
			<%} %>

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
			<li><a href="/perfil" >Perfil</a></li>
						<li><a href="/logout">Cerrar Sesion</a></li>
			<li class="menu_item menu_mm"><a href="index.html">Inicio</a></li>
					<li class="menu_item menu_mm"><a href="#">Nosotros</a></li>
					<li class="menu_item menu_mm"><a href="courses.html">Servicios</a></li>
					<li class="menu_item menu_mm"><a href="elements.html">Promociones</a></li>
					<li class="menu_item menu_mm"><a href="news.html">Contacto</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(images/slider_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Calidad y Garantia</h1>
		</div>
	</div>

	<!-- News -->

	<div class="news">
		<div class="container">
			<div class="row">
				
				<!-- News Column -->

				<div class="col-lg-8">
					
					<div class="news_posts">
						<!-- News Post -->
						<div class="news_post">
							<div class="news_post_image">
								<img src="images/news_1.jpg" alt="https://unsplash.com/@dsmacinnes">
							</div>
							<div class="news_post_top d-flex flex-column flex-sm-row">
								<div class="news_post_title_container">
									<div class="news_post_title">
										<a href="news_post.html">¿Quienes somos?</a>
									</div>
								</div>
							</div>
							<div class="news_post_text">
								<p>Nosotros nacimos para brindarte un servicio mas completo y a un costo mas bajo que la competencia .....</p>
							</div>
							<div class="news_post_button text-center trans_200">
								<a href="#">Leer mas</a>
							</div>
						</div>

						<!-- News Post -->
					

						<!-- News Post -->
						
					</div>

					<!-- Page Nav -->

					

				</div>

				<!-- Sidebar Column -->

				<div class="col-lg-4">
					<div class="sidebar">

						<!-- Archives -->
						<div class="sidebar_section">
							<div class="sidebar_section_title">
								<h3>Preguntas comunes</h3>
							</div>
							<ul class="sidebar_list">
								<li class="sidebar_list_item"><a href="#">¿Que buscamos?</a></li>
								<li class="sidebar_list_item"><a href="#">¿Donde los ubico?</a></li>
								<li class="sidebar_list_item"><a href="#">¿En que lugares del Peru estan?</a></li>
						
							</ul>
						</div>

						<!-- Latest Posts -->

						

						<!-- Tags -->

					

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			
			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
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
<script src="js/news_custom.js"></script>

</body>
</html>