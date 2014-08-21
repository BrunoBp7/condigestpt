<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"> -->
<!-- <script type="text/javascript" src="resources/js/jquery-1.3.2.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> -->

<style type="text/css">
.jumbotron {
	background: rgba(255, 255, 255, 0.4);
}
.list-group{
margin: 0px;
}
.list-group a{
padding: 5px;
}
.list-group-item{
padding: 0px;
}
</style>
</head>

<body style="background-color: #34495e">
	<div class="container" style="width: 65%; height: 100%">

		<%@include file="/WEB-INF/includes/navbar.jsp"%>

		<div class="jumbotron" style="margin-top: 100px; padding: 5px; height: 20%">

			<%@include file="/WEB-INF/includes/mycarousel.jsp"%>

		</div>
		<div class="mainContainer">
			<div class="jumbotron" style="width: 25%; height: auto; float: left; padding: 0px;">
				<div class="list-group">
					<a href="#" class="list-group-item active">
						<p class="list-group-item-heading">Area de Cliente</p>
					</a>
					<ul>
						<li>We provide 24*7 support.</li>
						<li>We provide 24*7 support.</li>
						<li>We provide 24*7 support.</li>
						<li>We provide 24*7 support.</li>
					</ul>
				</div>
			</div>
			<div class="jumbotron" style="width: 70%; height: 54%; float: right;"></div>
			<div class="jumbotron" style="width: 25%; height: 15%; float: left;"></div>
		</div>
	</div>

</body>
</html>