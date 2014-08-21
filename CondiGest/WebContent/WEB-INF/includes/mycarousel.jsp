<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.item {
	background-image: url("images/Header.jpg");
	background-position: center;;
	/* 	background: silver; */
	text-align: center;
	height: 100% !important;
	background-repeat: no-repeat;
}

.carousel {
	margin-top: 0px;
}

h2 {
	margin: 0;
	color: #666;
	padding-top: 90px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;
}
</style>


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
	<a class="carousel-control left" href="#myCarousel" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span>
	</a> <a class="carousel-control right" href="#myCarousel" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span>
	</a>
</div>