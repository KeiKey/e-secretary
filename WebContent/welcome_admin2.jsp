<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ page import="student_login.ConnectionPro"%>
<%@ page import="admin_package.User3"%>
<%@ page import="admin_package.UserDatabase3"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mire Se Vini</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link href="css/SidebarAdmin.css" rel="stylesheet" type="text/css" />
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
<!-- <style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Cabin+Sketch');

body {
	background: #000000;
}

.feather {
	width: 16px;
	height: 16px;
	vertical-align: text-bottom;
}

.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: 100;
	padding: 0;
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, 0.1);
}

.sidebar-sticky {
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: 1rem;
	overflow-x: hidden;
	overflow-y: auto;
}

@
supports ((position: -webkit-sticky ) or (position: sticky )) { .sidebar-sticky
	{ position:-webkit-sticky;
	position: sticky;
}

}
.navbar-brand {
	display: block;
	height: 125px;
	padding: 0.5rem 1rem;
	margin: 0;
	background: #343434;
	color: #fff;
	text-align: center;
	transition: background 0.5s;
	font-family: 'Cabin Sketch', cursive;
	font-size: 1.8rem;
	line-height: 2rem;
}

.navbar-brand:hover {
	background: #3c3c3c;
	color: #efefef;
	transition: background 0.5s;
}

.sidebar .nav-link {
	padding: 1rem;
	font-weight: 500;
	color: #ccc;
}

.sidebar .nav-item:hover {
	background: #EEEEEE;
}

.sidebar .nav-link:hover {
	color: #333333;
}

.sidebar .nav-link .feather {
	margin-right: 4px;
	color: #999;
}

.sidebar .nav-link.active {
	color: #007bff;
}

.sidebar .nav-link:hover .feather, .sidebar .nav-link.active .feather {
	color: inherit;
}

.sidebar .nav-item:hover {
	padding-left: 16px;
	transition: padding-left 0.5s;
}

#dashboard {
	display: grid;
	grid-template-columns: repeat(2, 100px);
	grid-template-rows: repeat(2, 100px);
}
</style> -->

</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("logUser") != null) {
			response.sendRedirect("welcome_student.jsp");
		} else if (session.getAttribute("logUser2") != null) {
			response.sendRedirect("welcome_pedagog.jsp");
		} else if (session.getAttribute("logUser3") == null) {
			response.sendRedirect("login_admin.jsp");
		}
	%>
	<div class="container-fluid">
		<div class="row">
			<nav class="col-md-2 d-none d-md-block bg-dark sidebar">
				<a class="navbar-brand" href="Departamenti.jsp"> <img
					src="${pageContext.request.contextPath}/img/depinfologocleanblack.png"
					alt="Fakulteti Logo" height="88" width="200">
				</a>
				<div class="sidebar-sticky">
					<ul class="nav flex-column nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a class="nav-link active" id="home-tab"
							data-toggle="tab" href="#profili" role="tab"
							aria-controls="profili" aria-selected="true">Informacion</a></li>
						<li class="nav-item"><a class="nav-link" id="profile-tab"
							data-toggle="tab" href="#ndrysho_pass" role="tab"
							aria-controls="ndrysho_pass" aria-selected="false">Ndrysho
								password</a></li>

					</ul>
				</div>
			</nav>

			<div class="col-md-10 offset-md-2">
				<div class="tab-content profile-tab" id="myTabContent">
					<div class="tab-pane fade show active" id="profili" role="tabpanel"
						aria-labelledby="home-tab">
						<div class="row">
							<div class="col-md-5 col-sm-12">
								<p>Student Id:</p>
							</div>
							<div class="col-md-7 col-sm-12">
								<label></label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<p>Emri:</p>
							</div>
							<div class="col-md-7">
								<label></label>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<p>Email:</p>
							</div>
							<div class="col-md-7">
								<label></label>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="ndrysho_pass" role="tabpanel"
						aria-labelledby="profile-tab">
						<form action="#" method="post" autoComplete="off">
							<div class="row">
								<div class="col-md-5">
									<p>Fjalekalimi aktual:</p>
								</div>
								<div class="col-md-7">
									<input type="password" name="old_pass" required class="pass_prof">
								</div>
							</div>
							<div class="row">
								<div class="col-md-5">
									<p>Fjalekalimi i ri:</p>
								</div>
								<div class="col-md-7">
									<input type="password" name="new_pass1" required class="pass_prof">
								</div>
							</div>
							<div class="row">
								<div class="col-md-5">
									<p>Perserit fjalekalimin:</p>
								</div>
								<div class="col-md-7">
									<input type="password" name="new_pass2" required class="pass_prof">
								</div>
							</div>
							<div class="row">
								<div class="col-7"><p> </p></div>
								<div class="col-2"><input type="submit" value="Ndrysho"> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">feather.replace();</script>
</body>
</html>