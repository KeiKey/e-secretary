<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ page session="true"%>
<%@ page
	import="student_login.ConnectionPro,student_login.UserDatabase,student_login.User"%>
<%@ page import="admin_package.User3,admin_package.UserDatabase3"%>
<%@ page import="pedagog_login.UserDatabase2,pedagog_login.User2"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Update Student</title>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("logUser") != null) {
		response.sendRedirect("welcome_student.jsp");
	} else if (session.getAttribute("logUser2") != null) {
		response.sendRedirect("welcome_pedagog.jsp");
	} else if (session.getAttribute("logUser3") == null) {
		response.sendRedirect("login_admin.jsp");
	}

	int idS = Integer.parseInt(request.getParameter("idS"));
	UserDatabase udb = new UserDatabase(ConnectionPro.getConnection());
	User stdUpd = udb.IdUser(idS);

	//int idP = Integer.parseInt(request.getParameter("idP"));
	//UserDatabase2 udb2 = new UserDatabase2(ConnectionPro.getConnection());
	//User2 pedagogUpdate = null; Si mund ta bej qe te mbaj te njejten, sps kam ber njeher per update/Register
%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
<link href="css/UpdateUsers.css" rel="stylesheet" type="text/css" />
<!-- <link href="css/UpdateUsers2.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
	<header>
		<nav class="navbar dark sticky-top transparent" style="height: 140px">
			<div class="container-fluid">
				<a class="navbar-brand" href="Departamenti.jsp"> <img
					src="${pageContext.request.contextPath}/img/depinfologocleanblack.png"
					alt="Fakulteti Logo" height="125" width="282">
				</a>

				<form action="logout_admin" method="post">
					<button type="submit" class="btn ">Dilni</button>
				</form>
			</div>
		</nav>
	</header>
	<div class="container">
		<c:if test=""></c:if>
		<h3>Ndrysho te dhenat e Studentit</h3>
		<h5>
			Student Id :
			<%=stdUpd.getId()%></h5>
		<div class="row">
			<form class="col s6" action="EditStudent" method="post"
				id="UpdateUsersForm" novalidate>
				<div class="row">
					<div class="input-field col s6">
						<input type="hidden" name="UpdId" value="<%=stdUpd.getId()%>">
						<label for="firstName">Emer</label> <input type="text"
							name="UpdName" id="firstName" value="<%=stdUpd.getName()%>"
							onchange="validateFirstName()" /> <span class="helper-text"></span>
					</div>
					<div class="input-field col s6">
						<label for="lastName">Mbiemer</label> <input type="text"
							name="UpdSurname" id="lastName" value="<%=stdUpd.getSurname()%>"
							onchange="validateLastName()" /> <span class="helper-text"></span>
					</div>
				</div>
				<div class="row">
					<div class="col s6">
						<label>Dega</label> <select id="UpdDega" class="form-control"
							name="UpdDega">
							<option selected value="<%=stdUpd.getDega()%>"><%=stdUpd.getDega()%></option>
							<option value="Informatike">Informatike</option>
							<option value="TIK">TIK</option>
							<option value="Master">Master</option>
						</select>

					</div>
					<div class="col s6">
						<label>Gjinia</label> <select id="UpdGender" class="form-control"
							name="UpdGender">
							<option selected value="<%=stdUpd.getGender()%>"><%=stdUpd.getGender()%></option>
							<option value="Femer">Femer</option>
							<option value="Mashkull">Mashkull</option>
							<option value="Papercaktuar">Papercaktuar</option>
						</select>

					</div>
				</div>
				<div class="row">
					<div class="input-field col s6">
						<label for="password">Fjalekalimi</label> <input type="password"
							name="UpdPass" id="password" onchange="validatePassword()"
							value="<%=stdUpd.getPassword()%>" /> <span class="helper-text"></span>
					</div>
					<div class="input-field col s6">
						<label for="confirmPassword">Konfirmo fjalekalimin</label> <input
							type="password" name="Confirm Password" id="confirmPassword"
							value="<%=stdUpd.getPassword()%>"
							onchange="validateConfirmPassword()" /> <span
							class="helper-text"></span>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<label for="email">Email</label> <input type="email"
							name="UpdEmail" id="email" value="<%=stdUpd.getEmail()%>"
							onchange="validateEmail()" /> <span class="helper-text"></span>
					</div>
				</div>
				<button class="btn " type="submit">Ndrysho</button>
				<a href="EditAll.jsp"><button type="button"
						class="btn ">Kthehu</button></a>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/UpdateUsersValidation.js" charset="utf-8"></script>
</body>
</html>