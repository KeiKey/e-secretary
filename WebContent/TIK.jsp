<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TIK</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
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

<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<!-- Ikonat e mediave sociale -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- css -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- jquery -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<!-- popper -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<!-- JS -->

<style type="text/css">
.bg-image-full {
	background: no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
}
</style>

</head>
<body>

	<!-- Navigation bar -->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top"
		style="padding-top: 0px; padding-bottom: 0">
		<div class="container-fluid">
			<a class="navbar-brand" href="Departamenti.jsp"> <img
				src="${pageContext.request.contextPath}/img/depinfologoclean.png"
				alt="Fakulteti Logo" height="100" width="226">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="Departamenti.jsp">Departamenti Informatikes</a></li>
					<li class="nav-item dropdown active"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown">Programet
							Mesimore</a>
						<div class="dropdown-menu">
							<a class="dropdown-item " href="Informatik.jsp">Informatike</a> <a
								class="dropdown-item" href="TIK.jsp">TIK</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="Master.jsp">Master</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="Personeli.jsp">Personeli</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<header class="py-5 bg-image-full"
		style="background-image: url('https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'); height: 450px;">

	</header>


	<!-- TIK content -->
	<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

		<div class="row">
			<div class="col-md-8 ">
				<h2>TIK</h2>
				<hr>
				<p>Programi i studimit në TIK përgatit profesionistët e rinj në
					fushën e projektimit dhe operimit të sistemeve software mbi bazat e
					parimeve inxhinierike. Programi ka si qëllim të përgatisë
					inxhinierë të kualifikuar të cilët njohin sistemet kompjuterike dhe
					janë të aftë të implementojnë dijet e tyre në praktikë, duke
					zhvilluar projekte të ndryshme në fushën e programimit. Projektimi,
					implementimi, testimi, shpërndarja dhe mirëmbajtja e sistemeve
					software të mëdha dhe komplekse kërkojnë njohuritë dhe aftësitë e
					një inxhinieri.</p>

				<br>

				<h3>Objektivat specifike te programit te studimit perfshijne:</h3>
				<hr>
				<ul>
					<li>Përgatitjen e studentëve me njohuritë bazë mbështetëse
						teorike në funksion të teknologjisë së informacionit.</li>
					<li>Njohjen e studentëve me teknologjitë konkrete që përdoren
						së fundmi në fushën e teknologjisë së informacionit dhe
						komunikimit.</li>
					<li>Njohjen e studentëve me bazat e konceptimit dhe
						implementimit të harduerëve mbështetës të sistemeve informatike.</li>
					<li>Aftësimin e studentëve në analizimin kritik të sistemeve
						të biznesit, me qëllim përmirësimin e tyre me anën e sistemeve të
						informacionit.</li>
					<li>Studentët të fitojnë aftësi për të komunikuar qartësisht
						me shkrim apo nëpërmjet prezantimeve koncepte teknike.</li>
					<li>Përgatitja e studentëve me aftësitë e nevojshme të
						komunikimit për integrim në skuadra pune në sektorë
						multidisiplinarë.</li>
				</ul>

			</div>
			<div class="col-md-4 ">
				<h2>Mundesite e punesimit</h2>
				<hr>
				<ul>
					<li>Ne administraten publike</li>
					<li>Ne kompani implementimi zgjidhjesh informatike</li>
					<li>Ne institucione bankare, telekomunikacioni, mjekesore</li>
					<li>Ne ndermarrje te ndryshme ekonomike</li>
				</ul>

			</div>
		</div>

	</div>



	<!--- Footer -->
	<footer class="dark">
		<div class="container-fluid padding">
			<div class="row text-center">
				<div class="col-md-4">
					<img
						src="${pageContext.request.contextPath}/img/depinfologoclean.png"
						alt="Fakulteti Logo" height="65" width="147">
					<hr class="light">
					<p>+355 68 20 20 350</p>
					<p>sekretaria@fshn.edu.al</p>
					<p>Bulevardi Zogu i Parë,</p>
					<p>Nr. 20/1 1001 Tirana, Albania</p>
				</div>
				<div class="col-md-4">
					<hr class="light">
					Oret e sherbimit:
					<hr class="light">
					<p>Hënë: 11:00 - 13:30</p>
					<p>...</p>
					<p>Premte: 11:00 - 13:30</p>
					<p>Shtunë/Dielë: Pushim</p>
				</div>
				<div class="col-md-4">
					<hr class="light">
					Rregjistrohu per njoftimet e fundit:
					<hr class="light">
					<form action="#">
						<div class="row">
							<div class="col-md-3"></div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" id="email"
									placeholder="Vendos emrin" name="emri">
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="form-group col-md-6">
								<input type="email" class="form-control" id="pwd"
									placeholder="Vendos Emailin" name="email">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Rregjistrohu</button>
					</form>
				</div>
				<div class="col-12">
					<hr class="light-100">
					<h5>&copy; Fakulteti i Informatikës</h5>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
