<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"> -->
<!-- <script type="text/javascript" src="resources/js/jquery-1.3.2.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> -->

<style type="text/css">
.bs-example {
	margin: 20px;
}

h2 {
	margin: 0;
	color: #666;
	padding-top: 90px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;
}

.item {
	background-image: url("images/Header.jpg");
	background-position: center;;
	/* 	background: silver; */
	text-align: center;
	height: 100% !important;
	text-align: center;
	height: 100% !important;
	background-repeat: no-repeat;
}

.carousel {
	margin-top: 0px;
}

.bs-example {
	margin: 0px;
}

.navbar {
	background-color: transparent;
	background: transparent;
}

.navbar li {
	color: #000
}

.jumbotron {
	
	/* 	background-color: transparent; */
	/* 	background: transparent; */
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".navbar-right a").click(function(){ 
			$("#myModal").modal('show');
		});
	});
</script>
</head>
<body>
	<div class="container" style="width: 65%; height: 35%">
		<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header ">
					<button type="button" data-target="#navbarCollapse"
						data-toggle="collapse" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand">CondiGest</a>
				</div>
				<!-- Collection of nav links and other content for toggling -->
				<div id="navbarCollapse" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="main">Serviço</a></li>
						<li><a href="main">Informações</a></li>
						<li><a href="main">Contactos</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a data-html="true" href="#" data-toggle="popover"
							data-content="Here">Login</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="jumbotron"
			style="margin-top: 120px; padding: 5px; height: 80%">
			<!-- 		<img src="images/Header.jpg" class="img-thumbnail" alt="CondiGest"> -->
			<div id="myCarousel" class="carousel slide" data-interval="2000"
				data-ride="carousel">
				<!-- Carousel indicators -->
				<ol class="carousel-indicators" style="bottom: 0px;">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- Carousel items -->
				<div class="carousel-inner" style="height: 100%">
					<div class="active item">
						<h2></h2>
						<div class="carousel-caption">
							<h3></h3>
							<p></p>
						</div>
					</div>
					<div class="item">
						<h2></h2>
						<div class="carousel-caption">
							<h3></h3>
							<p></p>
						</div>
					</div>
					<div class="item">
						<h2>Slide 3</h2>
						<div class="carousel-caption">
							<h3>Third slide label</h3>
							<p>Praesent commodo cursus magna, vel scelerisque nisl
								consectetur.</p>
						</div>
					</div>
				</div>
				<!-- Carousel nav -->
				<a class="carousel-control left" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="carousel-control right" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>

		<div class="jumbotron" style="width: 25%; height: 100%; float: left;"></div>
		<div class="jumbotron" style="width: 70%; height: 100%; float: right;"></div>

		<div id="myModal" class="modal fade">
			<div class="modal-dialog" style="width: 400px;">
				<div class="modal-content" style="background-color: rgba(255, 255, 255, 0.6); border-radius: 20px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Login</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal">
							<div class="form-group">
								<div class="col-xs-10">
									<input type="email" class="form-control" id="inputEmail"
										placeholder="Email">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<input type="password" class="form-control" id="inputPassword"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<div class="checkbox">
										<label><input type="checkbox"> Remember me</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<button type="submit" class="btn btn-primary">Login</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>