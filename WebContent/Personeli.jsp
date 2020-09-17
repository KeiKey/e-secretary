<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Personeli</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/personeli.css" />
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<style type="text/css">
</style>
</head>

<body>

	<!-- Navbar -->
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
					<li class="nav-item dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown">Programet
							Mesimore</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="Informatik.jsp">Informatike</a> <a
								class="dropdown-item" href="TIK.jsp">TIK</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="Master.jsp">Master</a>
						</div></li>
					<li class="nav-item active"><a class="nav-link"
						href="Personeli.jsp">Personeli</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Stafi -->
	<section class="personeli padding-lg">
		<div class="container">
			<div class="row heading heading-icon">
				<h2>Personeli Akademik</h2>
			</div>
			<ul class="row">
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/profasocdr-Endrit-Xhina">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/endri_xhina.jpg"
									class="img-responsive" alt="Endri Xhina">
							</figure>
							<h3>Prof Asoc Dr Endrit Xhina</h3>
							<p>Zyra 208C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a
					href="http://informatika.fshn.edu.al/personelli/profasocdr-Alda-Kika">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/alda_kika.jpg"
									class="img-responsive" alt="">
							</figure>
							<h3>Prof Asoc Dr Alda Kika</h3>
							<p>Zyra 206C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/dr-Denis-Saatciu">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/denis_saatciu.jpg"
									class="img-responsive" alt="">
							</figure>
							<h3>Dr Denis Saatciu</h3>
							<p>Zyra 202B</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/dr-Bora-Bimbari">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/bora_bimbari.jpg"
									class="img-responsive" alt="">
							</figure>
							<h3>Dr Bora Bimbari</h3>
							<p>Zyra 307C</p>

						</div>
				</a></li>
			</ul>
			<ul class="row">
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/msc-julian-fejzaj">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/julian_fejzaj.jfif"
									class="img-responsive" alt="">
							</figure>
							<h3>Dr Julian Fejzaj</h3>
							<p>Zyra 205C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a
					href="http://informatika.fshn.edu.al/personelli/dr-Silvana-Greca">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/silvana_greca.jfif"
									class="img-responsive" alt="">
							</figure>
							<h3>Dr Silvana Greca</h3>
							<p>Zyra 211C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/dr-Odeta-Shkreli">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/odeta_shkreli.jfif"
									class="img-responsive" alt="">
							</figure>
							<h3>Dr Odeta Shkreli</h3>
							<p>Zyra 206C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/msc-Ana-Dhembi">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/ana_dhembi.jpg"
									class="img-responsive" alt="">
							</figure>
							<h3>Msc Ana Dhembi</h3>
							<p>Zyra 202B</p>

						</div>
				</a></li>
			</ul>
			<ul class="row">
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/personelli/anxhela-kosta">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/anxhela_kosta.jfif"
									class="img-responsive" alt="Anxhela Kosta">
							</figure>
							<h3>Msc Anxhela Kosta</h3>
							<p>Zyra 307C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a
					href="http://informatika.fshn.edu.al/personelli/msc-Elson-Cibaku">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/elson_cibaku.jfif"
									class="img-responsive" alt="">
							</figure>
							<h3>Msc Elson Cibaku</h3>
							<p>Zyra 211B</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="http://informatika.fshn.edu.al/msc-ernest-shahini">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="${pageContext.request.contextPath}/img/stafi/ernest_shahini.jfif"
									class="img-responsive" alt="">
							</figure>
							<h3>Msc Ernest Shahini</h3>
							<p>Zyra 104C</p>

						</div>
				</a></li>
				<li class="col-12 col-md-6 col-lg-3"><a style="display: block"
					href="#">
						<div class="cnt-block equal-hight" style="height: 349px;">
							<figure>
								<img
									src="https://cdn.pixabay.com/photo/2014/05/31/23/16/teacher-359311__480.png"
									class="img-responsive" alt="Arlinda Profi">
							</figure>
							<h3>Msc Arlinda Profi</h3>
							<p>Zyra 202B</p>

						</div>
				</a></li>
			</ul>
		</div>
	</section>


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
							<div class="form-group col-md-6 ">
								<input type="text" class="form-control" id="email"
									placeholder="Vendos emrin" name="emri">
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="form-group col-md-6 ">
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
