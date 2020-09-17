<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Departamenti I Informatikes</title>
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
<!-- Ikonat e mediave sociale -->
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
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

</head>

<style>
html, body {
	overflow-x: hidden;
}
</style>
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
					<li class="nav-item active"><a class="nav-link"
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
					<li class="nav-item"><a class="nav-link" href="Personeli.jsp">Personeli</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- Carousel -->
	<div class="container-fluid padding">
		<div class="row padding">
			<div id="carouselExampleIndicators"
				class="carousel slide col-lg-7 col-md-7 col-sm-12"
				data-ride="carousel" align="center">
				<ul class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ul>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/img/carousel/carousel1.PNG"
							alt="Vizioni">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/img/carousel/carousel2.PNG"
							alt="Prezantim">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="${pageContext.request.contextPath}/img/carousel/carousel3.PNG"
							alt="Fokusi">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<div class="col-lg-1 col-md-1 col-sm-2"></div>
			<div class="col-lg-4 col-md-4 col-sm-8">
				<a style="display: block" href="login_student.jsp"> <img
					class="img-fluid carousel"
					src="${pageContext.request.contextPath}/img/sistem_notash_green.PNG"
					style="width: 100%" />
				</a>
			</div>
		</div>

	</div>


	<!-- FSHN Info -->
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-6 col-sm-12 ">
					<h1>Fakulteti i Shkencave të Natyrës</h1>
					<p class="lead">Fakulteti i Shkencave të Natyrës (FSHN) është
						qendra kryesore në Shqipëri për përgatitjen e specialistëve të
						lartë në informatikë, matematikë, fizikë, kimi, kimi ndustriale,
						biologji, bioteknologji. FSHN është gjithashtu institucion i
						rëndësishëm për përgatitjen e mësuesve për shkollat e mesme në
						lëndët mësimore të matematikës, fizikës, kimisë, biologjisë dhe
						informatikës në gjithë sistemin e shkollave të mesme në Shqipëri.
					</p>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-5 col-sm-12">
					<img src="http://top-channel.tv/wp-content/uploads/2019/07/fh.jpg"
						style="width: 100%" alt="FSHN foto Top-Channel" />
				</div>
			</div>
		</div>
	</div>


	<!-- Dep Info -->
	<div class="container-fluid padding " style="margin-top: 75px">
		<div class="row welcome text-center">
			<div class="col-sm-2"></div>
			<div class="col-lg-12 col-md-12 col-sm-8 col-center">
				<h1 class=display-4 align="center">Departamenti i Informatikës</h1>
			</div>
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-1"></div>
				<div class="col-lg-8 col-md-8 col-sm-10">
					<p class="lead">Misioni i Departamentit të Informatikës është
						të zgjerojë dhe të diversifikojëprofesionistë të specializuar në
						informatikë dhe teknologji informacioni dhe tëçojë përpara
						njohuritë në sisteme dhe shkencat kompjuterike duke siguruar
						mësimdhënie me cilësi të lartë si dhe të drejtojë kërkime
						shkencore që adresojnë sfida në fusha aktuale informatike dhe
						probleme sociale.</p>
				</div>
			</div>
		</div>
	</div>


	<!-- Objektivat -->
	<div class="container-fluid padding" style="margin-top: 75px">
		<div class="col-12">
			<h1 class="display-4" align="center">Objektivat e Departamentit
				të Informatikës</h1>
		</div>
		<div class="row text-center padding" style="margin-top: 50px">
			<div class="col-lg-2 col-md-2 col-sm-1"></div>
			<div class="col-lg-2 col-md-2 col-sm-10 ">
				<i class="fas fa-thumbtack"> </i>
				<h3>Organizim</h3>
				<p>Organizimi i stafit akademik në grupe studimi dhe kërkimi
					shkencor në fusha të përafërta duke rritur mundësinë e kualifikimit
					të specializuar të stafit si dhe bashkëpunimit mes tyre për të
					realizuar projekte kërkimore kombëtare dhe ndërkombëtare.</p>
			</div>
			<div class="col-lg-1 col-md-1 col-sm-1"></div>
			<div class="col-1 d-md-none"></div>
			<div class="col-lg-2 col-md-2 col-sm-10">
				<i class="fas fa-thumbtack"> </i>
				<h3>Zhvillim</h3>
				<p>Të zhvillojë shtyllat e sjelljes profesionale duke përfshirë
					njohuri mbi çështjet e etikës, aftësi të mira komunikimi si dhe
					ndjekjen dhe trasmetimin e ideve në mënyrë efektive.</p>
			</div>
			<div class="col-lg-1 col-md-1 col-sm-1"></div>
			<div class="col-1 d-md-none"></div>
			<div class="col-xs-12 col-sm-10 col-md-2">
				<i class="fas fa-thumbtack"> </i>
				<h3>Promovim</h3>
				<p>Promovimin e kërkimit dhe studimeve të avancuara në fusha të
					ndryshme teorike dhe aplikative në informatikë si dhe fushave
					multidisiplinare të lidhura me të.</p>

			</div>

			<div class="row text-center padding" style="margin-top: 50px">
				<div class="col-md-2 col-sm-1"></div>
				<div class="col-xs-12 col-sm-10 col-md-2">
					<i class="fas fa-thumbtack"> </i>
					<h3>Bashkepunim</h3>
					<p>Krijimi i lidhjeve të qëndrueshme me departamente të
						ngjashme të shteteve të tjera me qëllim nxitjen e bashkëpunimit në
						drejtim mësimor e kërkimor.</p>
				</div>
				<div class="col-md-1 col-sm-1"></div>
				<div class="col-1 d-md-none"></div>
				<div class="col-xs-12 col-sm-10 col-md-2">
					<i class="fas fa-thumbtack"> </i>
					<h3>Profesionalizem</h3>
					<p>Të zhvillojë shtyllat e sjelljes profesionale duke përfshirë
						njohuri mbi çështjet e etikës, aftësi të mira komunikimi si dhe
						ndjekjen dhe trasmetimin e ideve në mënyrë efektive.</p>
				</div>
				<div class="col-md-1"></div>
				<div class="col-1 d-md-none"></div>
				<div class="col-xs-12 col-sm-10 col-md-2">
					<i class="fas fa-thumbtack"> </i>
					<h3>Integrim</h3>
					<p>Përsosja e pandërprerë e programeve mësimore për integrimin
						e vazhdueshëm të njohurive bashkëkohore të Informatikës.</p>
				</div>

			</div>
		</div>
	</div>


	<!-- Punesimi -->
	<div class="container-fluid padding"
		style="padding-top: 35px; margin-top: 25px; padding-bottom: 35px; background-color: #eee;">
		<div class="row padding">
			<div class="col-lg-12 col-md-12 col-sm-12 col-center"
				style="margin-bottom: 15px">
				<h1 class=display-4 align="center">Mundesite e punesimit</h1>
			</div>
			<div class="col-lg-1 col-md-1 col-sm-1"></div>
			<div class="col-lg-5 col-md-10 col-sm-10">
				<img class="img-fluid"
					src="${pageContext.request.contextPath}/img/Jobs.png"
					style="width: 100%" />

			</div>

			<div class="col-lg-1 col-sm-1 col-md-1"></div>


			<!--d-none
			d-block
			col-lg-0
			-->
			<div class="col-1 d-lg-none"></div>
			<div class="col-lg-4 col-sm-10 col-md-10">
				<h5>Studentët tanë të diplomuar, janë angazhuar menjëherë, si
					pjesë përbërëse e stafit të kompanive të ndryshme.</h5>
				<h4 class="lead">Sektorët e punësimit janë të ndryshëm si:</h4>
				<ul>
					<li class="lead">Krijimi i aplikacioneve web</li>
					<li class="lead">Zhvillimi i sofware-eve të ndryshëm</li>
					<li class="lead">Krijimi dhe mirëmbajtja e rrjetave të
						kompjuterave</li>
					<li class="lead">Telefonia celulare mobile</li>
					<li class="lead">Telefonia fikse etj</li>
				</ul>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>


	<!--- Ikonat -->
	<div class="container-fluid padding">
		<div class="row padding" style="padding-top: 50px; margin-top: 25px;">

			<div class="col-lg-2 col-md-1 col-sm-2"></div>

			<div class="container-widget col-lg-2 col-md-4 col-sm-8">
				<div class="img-container">
					<img
						src="${pageContext.request.contextPath}/img/widget/banksqr.png">
				</div>

				<div class="user-info">
					<h1>37%</h1>
					<p>E studenteve perfituan prej programeve te bursave</p>
				</div>
			</div>

			<div class="col-lg-1 col-md-2 col-sm-2"></div>

			<div class="col-2 d-md-none"></div>

			<div class="container-widget col-lg-2 col-md-4 col-sm-8">
				<div class="img-container">
					<img
						src="${pageContext.request.contextPath}/img/widget/studentsqr.png">
				</div>
				<div class="user-info">
					<h1>98</h1>
					<p>Kerkime shkencore te kryera prej studenteve tane</p>
				</div>
			</div>

			<div class="col-lg-1 col-md-4 col-sm-2"></div>

			<div class="col-2 d-md-none"></div>

			<div class="container-widget col-lg-2 col-md-4 col-sm-8">
				<div class="img-container">
					<img
						src="${pageContext.request.contextPath}/img/widget/teachersqr.png">
				</div>
				<div class="user-info">
					<h1>20:1</h1>
					<p>Raporti midis studenteve dhe pedagogeve</p>
				</div>
			</div>

		</div>
	</div>


	<!--- Footer -->
	<footer class="dark" style="margin-top: 25px;">
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
