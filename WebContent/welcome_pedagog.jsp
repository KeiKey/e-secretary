<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mire Se Vini</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link href="css/login_style.css" rel="stylesheet" type="text/css" />
<link rel="icon"
	href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH0AAAB9CAMAAAC4XpwXAAAAt1B
		MVEUoOEzn7O3///+vtrtVYIBseXpzg7/s8fIAIDq2vcLIzdFYYnAhMkj4+fndNS4dL0VGUm4/THLd4u
		W9w8d2f4mjq686R1h0gIHdLibfWFTfc3AxQFRATWXo+PnkurncIRbePjgiM0Rhb3AAEzPO1eRqerFjc
		6ZIV31NWGjS1NaVnqLkwsLeTUjfYF1neLt/jcObp87Dy96Qncm2v9ncFgbfbGjge3g0Q11aaZh7jMxyf
		6sVKDN/io7c0kSqAAAC5UlEQVRoge3ba3uaMBQH8EQGKaxpLcjc1t3wRuM2e3GbtfP7f64JapUQG5PAS
		fc8+b+XHyckR4GIOjaD7OvERrY6xXZCC51YwjEmHWSr8iIU2St9Xbxl3SKO8V4HXGx1PY7gEvM68YaXU
		Bl6pKafIaicOd3pThfo112DfDLW3xjE6U53utNP1/Mr/SxM9Xcs1g7unZvqsf6PfdK7NNa1cac73elOd
		7qa/v3Hh2p+fobTyZdf76v5Bqp/vajG6XxGI/z8PMqCPru9u9+eALxOgiCYzR7mMSWtzvkLsX4XlJkF8
		xFZNbfef3+s5o941o2CfZ7yRZY1otefogpxHAeVjPMFEp1AS52WPARcxo9dOP1+xvPLHEznh36NdwVD39
		p3HD/0OeB1x2R+At5e7aPKhR+Ll9yJOqbKrx1uK7VPDGpHPfU8cStO/7ojjfcOV9y0m+jrGsmWcr5FfcI
		v+Trfop5vyJf4Fp+QL8r2+jc/mHmAejYum0yWH8Vb1R+XZYfL8s38G19D6qi7ba+b6uuVt/xmZNdgCt6
		k25ieRi5u9EBvhYx+17UVpzv9dejDc6gc7HzYPc73bt5C5cbbocjbJYTLs7nXbcTpTldIQuhhSAKqU25
		zKIXUw9re1FD+ocZ0j3A40TuMpp5WX9GyVFPXG7JmEiJmUWdI84o1EoI69opnxT5qWzzb7CEnUaL5/XwY
		tUMkEdntYO9QpTC/X4/P1A6y3z+vmHjg1zOINY6kozOhzoD0SKhHQLon1D0gfSrAfX8KpPeFeh9Gx6KBX
		w89BtGTI7rGtNPQV0Lc91cQurDXaA69ui6e8XqzXlkXNrpt8crtTlU/Ou5lVMdeUWcv2es1r/hVo6RTYY
		+tJOHvMxrSKfb6Utwf9EN8+glIdbL5i0sSptP0tEzTcPu/GP6eQ1nXvU8ok8oWgUTHBnYRySKQ6JGhLun
		9Et30Pqt+s/v/1G73utud8+vqo0Q3kbTtv4L/AlvLP8Hm1yTIkRxUAAAAAElFTkSuQmCC"
	type="image/x-icon">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
.container-fluid input {
	width: 100%;
	border-radius: 10px;
}

.container-fluid input[type="submit"] {
	display: block;
	border: none;
	outline: none;
	height: 40px;
	background: #eccc68;
	color: #000;
	font-size: 20px;
}

.container-fluid input[type="submit"]:hover {
	border: none;
	outline: none;
	height: 40px;
	background: #d2a51c;
	color: #fff;
	font-size: 20px;
	border-radius: 10px;
	cursor: pointer;
	transition: .3s ease-out;
}

.box_in {
	opacity: .85;
	height: 70%;
	background: #2f3542;
	margin: 0;
	padding: 30px;
	top: 55%;
	left: 50%;
	color: #fff;
	border-radius: 15px;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
}
</style>


</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("logUser") != null) {
			response.sendRedirect("welcome_student.jsp");
		} else if (session.getAttribute("logUser3") != null) {
			response.sendRedirect("welcome_admin.jsp");
		} else if (session.getAttribute("logUser2") == null) {
			response.sendRedirect("login_pedagog.jsp");
		}
	%>
	<nav class="navbar navbar-expand-md navbar-light  sticky-top"
		style="padding-top: 0px; padding-bottom: 0; background-color: transparent;">
		<div class="container-fluid">
			<a class="navbar-brand" href="Departamenti.jsp"> <img
				src="${pageContext.request.contextPath}/img/depinfologocleanblack.png"
				alt="Fakulteti Logo" height="125" width="282">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="welcome_pedagog.jsp">Site i notave</a></li>
					<li class="nav-item"><a class="nav-link"
						href="profili_pedagog.jsp">Profili</a></li>
				</ul>
			</div>
			<form action="logout_pedagog" method="post">
				<input type="submit" value="Dilni">

			</form>
		</div>
	</nav>
	<div class="box_in col-lg-9 col-md-10 col-sm-10 col-xs-10">
	
	</div>
</body>

</html>