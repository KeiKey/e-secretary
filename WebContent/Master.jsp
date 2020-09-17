<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Master</title>
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
					<li class="nav-item "><a class="nav-link"
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
		style="background-image: url('https://images.unsplash.com/photo-1574170623066-9ec82b5f1a53?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=800&amp;q=60'); height: 450px;">

	</header>


	<!-- Master Content -->
	<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

		<div class="row">
			<div class="col-md-8 ">
				<h2>Master</h2>
				<hr>
				<p>Programi i studimit ne Inxhinieri Informatike synon te pajise
					studentet me njohuri te thella tekniko-shkencore te nivelit
					universitar, te cilat kerkohen nga fusha te ndryshme te sistemeve
					te shperndarjes se informacionit dhe ruajtjes se te dhenave.
					Programi akademik i Masterit Shkencor ne Inxhinieri Informatike
					eshte hartuar duke pasur parasysh kerkesat e tregut te punes per
					eksperte ne kete fushe.</p>
				<p>Te diplomuarit ne kete program studimi jane ne gjendje te
					kuptojne dhe te analizojnefunksionimin e sistemeve komplekse, te
					administrojne dhe te mirembajne rrjetat kompjuterike, te menaxhojne
					sistemet kompjuterike dhe te jene ne gjendje te ndertojne sisteme
					informatike te sigurta. Studentet do te kene aftesite per te
					kuptuar dhe per te zgjidhur probleme te ndryshme tekniko-shkencore
					nga fushat e siperpermendura, per te analizuar çeshtjet
					teknologjike dhe inxhinierike, te ndikojne me njohurite e tyre ne
					ciklin e jetes se nje produkti, te hartojne punime shkencore dhe te
					zhvillojne projekte te ndryshme ne fushen e informatikes. Masteri i
					Shkencave ne Inxhinieri Informatike u lejon studenteve te
					perfshihen ne projekte kerkimore shkencore apo te vazhdojne
					studimet doktorale.</p>

				<br>

				<h3>Objektivat specifike te programit te studimit perfshijne:</h3>
				<hr>
				<ul>
					<li>Thellimin e njohurive informatike te fituara gjate
						studimeve te Ciklit te Pare (bachelor).</li>
					<li>Analizimi i thelluar i sistemeve te informacionit
						komplekse qe perbejne te ashtuquajturen shoqeri informacioni.</li>
					<li>Fitimi i koncepteve te avancuara te informatikes teorike
						qe do u sherbejne studenteve qe zgjedhin te ndjekin nje karriere
						akademike.</li>
					<li>Permiresimi i aftesive te punes ne grup te studenteve
						nepermjet projekteve shkollore qe simulojne situata reale</li>
					<li>Permiresimi i aftesive permbledhese te koncepteve,
						komunikuese dhe prezantuese per ti pergatitur studentet me
						perballjen me nje mjedis nderdisiplinar te gjendur ne ambientet e
						punes.</li>
					<li>Permiresimi i aftesive analitike dhe problem zgjidhese te
						studenteve.</li>
					<li>Njohja me bazat e metodologjise se kerkimit shkencor ne
						informatike, inkurajuar nepermjet shkrimit te nje mikroteze
						shkencore qe permbyll studimet.</li>
				</ul>

			</div>

			<div class="col-md-4 ">
				<h2>Mundesite e punesimit</h2>
				<hr>
				<ul>
					<li>Si specialist informatike ne administraten publike ose ne
						ndermarrje te ndryshme ekonomike</li>
					<li>Si arkitekt softuare ose zhvillues kryesor ne kompani
						impelementimi zgjidhjesh informatike</li>
					<li>Si arkitekt softuare ose zhvillues kryesor ne industrine e
						telekomunikacionit, bankare apo shendetesore</li>
					<li>Si menaxher projektesh te teknologjise se informacionit</li>
					<li>Si punonjes mesimor-shkencor ne institucione akademike</li>
					<li>Si kerkues shkencor ne institute kerkimi shkencor</li>
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
