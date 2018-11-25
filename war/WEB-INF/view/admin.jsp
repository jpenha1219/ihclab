<%@ page import="controller.model.User"%>
<%@ page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<User> users = null;

	User user = null;
	try {
		users = (List<User>) request.getAttribute("users");
		user = (User) request.getAttribute("user");
	} catch (Exception e) {

	}
	SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
	String created = formato.format(users.get(0).getCreated());
	String birth = formato.format(users.get(0).getDate());
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
<link rel="stylesheet" type="text/css" href="styles/admin_styles.css">
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
							<li class="main_nav_item"><a href="index.html">Inicio</a></li>
							<li class="main_nav_item"><a href="us.html">Nosotros</a></li>
							<li class="main_nav_item"><a href="service.html">Servicios</a></li>
							<li class="main_nav_item"><a href="promotion.html">Promociones</a></li>
							<!--  <li class="main_nav_item"><a href="news.html">news</a></li>-->
							<li class="main_nav_item"><a href="contact.html">Contactanos</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div
				class="header_side d-flex flex-row justify-content-center align-items-center">
				<!-- <img src="images/phone-call.svg" alt=""> -->
				<%
					if (users != null) {
				%>
				<a href="/perfil?id=<%=users.get(0).getId()%>"><span>Perfil</span></a>
				<a href="/logout"><span>Cerrar Sesion</span></a>
			</div>
			<%
				} else {
			%>
			<a href="/login"><span>Ingresar</span></a>
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
					<span><a href="/perfil?id=<%=users.get(0).getId()%>">Perfil</a></span>
					<span><a href="/logout">Cerrar Sesion</a></span>
					<li class="menu_item menu_mm"><a href="index.html">Inicio</a></li>
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


	<!-- Contact -->

	<div class="contact"
		style="width: 100%; padding: 40px; margin-top: 10%">
		<div class="row">
			<div class="col-lg-89" style="width: 100%">

				<!-- Contact Form -->
				<div class="contact_form">
					<div class="contact_title">Administrar Usuarios</div>

					<div class="contact_form_container" style="width: 100%">
						<form action="post">
							<script type="text/javascript">
								function editar() {
									document.getElementById("name").disabled = false;
									document.getElementById("email").disabled = false;
									document.getElementById("born").disabled = false;
									document.getElementById("paquete").disabled = false;
									document.getElementById("btn").style.display = "inline";
									document.getElementById("guardar").style.display = "inline";
									document.getElementById("contact_send_btn").style.display = "none";
								}
							</script>

							<table
								style="border-color: #0000ff; margin-bottom: 30px; margin-left: 10px; width: 70%"
								border="3px">

								<tr
									style="margin-left: 10px; background-color: #0000ff; color: #ffff">
									<th><h3>Nombre</h3></th>
									<th><h3>Contraseña</h3></th>
									<th><h3>Email</h3></th>
									<th><h3>Estado</h3></th>


								</tr>
								<%
									for (int i = 0; i < users.size(); i++) {
								%>
								<tr style="margin: 10px; color: #000">
									<td><%=users.get(i).getName()%></td>
									<td><%=users.get(i).getPassword()%></td>
									<td><%=users.get(i).getEmail()%></td>
									<td><label <%if (users.get(0).isStatus() == true) {%> checked
										<%}%> style="align-items: center; margin-left: 20px">
											<input checked type="checkbox" id="cbox1" value="on">
									</label></td>
								</tr>
								<%
									}
								%>
							</table>
							<br>


							<button href="/perfil" style="margin-bottom: 10px"
								id="contact_send_btn" type="button"
								class="contact_send_btn trans_200" value="Submit">Editar</button>
							<br>
						</form>

					</div>

				</div>



			</div>


		</div>
	</div>

	<!-- Footer -->

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