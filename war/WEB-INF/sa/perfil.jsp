<%@ page import="controller.model.User" %>
<%@ page import="java.util.List" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   User user=null;
   String created=null;
	String birth =null;
	String name= null;
	String email=null;
	String genero=null;
   try{
	   user = (User)request.getAttribute("users");
   SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
    created = formato.format(user.getCreated());
    birth = formato.format(user.getDate());   
   
   
   
   }
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
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
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
							<ul class="main_nav_list">
					<%if(user==null) {%>
						<li class="main_nav_item"><a href="/index"></a></li>
						<li class="main_nav_item"><a href="/us"></a></li>
						<li class="main_nav_item"><a href="/service"></a></li>
						<li class="main_nav_item"><a href="/promo"></a></li>
						<li class="main_nav_item"><a href="/contact	"></a></li>
					<%}else{
						%>
						<li class="main_nav_item"><a href="/index">Inicio</a></li>
						<li class="main_nav_item"><a href="/us">Nosotros</a></li>
						<li class="main_nav_item"><a href="/service">Servicios</a></li>
						<li class="main_nav_item"><a href="/promotion">Promociones</a></li>
						<!--  <li class="main_nav_item"><a href="/news">news</a></li>-->
						<li class="main_nav_item"><a href="/contact">Contactanos</a></li><%} %>
					
						</ul>
					</div>
				</nav>
			</div>
			<div
				class="header_side d-flex flex-row justify-content-center align-items-center">
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

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	
	<!-- Contact -->

	<div class="contact" style="width: 100%; padding: 40px; margin-top: 10%">
			<div class="row">
				<div class="col-lg-89" style="width: 100%">
					
					<!-- Contact Form -->
					<div class="contact_form">
						<div class="contact_title">Perfil</div>

						<div class="contact_form_container" style="width: 100%">
							<form action="post">
								<div style="height: 50%;  width: 50% ;float: right;">
					<img src="images/hombre.jpg" height="100%" width="100%" alt="no disponible">

				</div>
				<script type="text/javascript"> 

				function editar(){
				document.getElementById("name").disabled=false;
				document.getElementById("email").disabled=false;
				document.getElementById("born").disabled= false;
				document.getElementById("paquete").disabled= false;
				document.getElementById("btn").style.display="inline";
				document.getElementById("guardar").style.display="inline";
				document.getElementById("contact_send_btn").style.display="none";
	}						
		</script>
	
				


	
								<h4>Nombre</h4>
								<input style=" width: 30%; background: #f8f4f4; border: solid 2px transparent; margin-bottom: 24px; height: 42px; padding-left: 33px " value="<%=user.getName() %>" disabled="false"  id="name" class="inputname" type="text" placeholder="Nombre" required="required" data-error="Escriba su nombre."><br>
																<h4>Correo Electronico</h4>
								<input style="width: 40% "  value="<%=user.getEmail() %>" disabled  id="email" class="input_field contact_form_email" type="email" placeholder="E-mail" required="required" data-error="Correo requerido.">
																<h4>Fecha de ingreso</h4>
								<input style="width: 40% "  value=<%=created %>disabled  id="contact_form_email" class="input_field contact_form_email" type="email" placeholder="E-mail" required="required" data-error="Correo requerido.">
								<h4>Fecha de nacimiento</h4>
								
								    <input value="<%=birth %>" style="width: 36% " type="date" id="born" class="input_field contact_form_email" placeholder="E-mail" required="required" data-error="fecha de nacimiento requrida" class="form-control" name="birth" placeholder="Birth"  max="2050-05-24" >
								 <h4>Paquete Contratado</h4>
								 <select id="paquete" disabled="true"  style="width: 30%"  class="input_field contact_form_email">
  									 
  									<option selected value="4Mb">4Mb x 60$</option>
  									<option  value="6Mb">6Mb x 70$</option>
  									<option  value="8Mb">8Mb x 80$</option>
  									<option  value="10Mb">10Mb x 100$</option>
								</select>
								<br>
								<input type="button" class="contact_send_btn trans_200" name="enviar" id="guardar" value="Guardar Cambios"  style="width: 60%;  display: none ">
								<button href="/perfil?action=#" style="display:none; width: 20%;margin-left:20px " id="btn" type="button" class="contact_send_btn trans_200" value="Submit">Cancelar</button>
								<button onclick="editar()" style="margin-bottom:10px" id="contact_send_btn" type="button" class="contact_send_btn trans_200" value="Submit">Editar</button>
								<%if(user.getRole().equals("administrador")){ %>
								<button disabled style=" margin-left: 10px; margin-bottom:10px; width: 30%" id="contact_send_btn" type="button" class="contact_send_btn trans_200" value="Submit"> <a  href="/admin?id=<%=user.getId() %>">Administrar Usuarios </a> </button>
								<%} %>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/contact_custom.js"></script>

</body>
</html>