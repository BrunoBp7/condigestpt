<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@page session="true"%>



<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript" src="resources/js/jquery.bootstrap-growl.js"></script>


<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"> -->
<!-- <script type="text/javascript" src="resources/js/jquery-1.3.2.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> -->

<script type="text/javascript">
	$(document).ready(function() {
		$(".navbar-right .loginClass").click(function() {
			$("#myModal").modal('show');
		});
		$("#myModal").on('show.bs.modal', function() {
			$(".firstContainer").addClass('blur');
		});
		$("#myModal").on('hide.bs.modal', function() {
			$(".firstContainer").removeClass('blur');
		});
// 		$(".growl").click("I'll use Bootstrap Danger Alert Styling!", {
// 			type: "danger"
// 		});
	});
</script>

<style type="text/css">

.jumbotron {
	background: rgba(255, 255, 255, 0.1);
}

.blur {
	-webkit-filter: blur(5px);
	-moz-filter: blur(5px);
	-o-filter: blur(5px);
	-ms-filter: blur(5px);
	filter: blur(5px);
}

.firstContainer {
/* 	background: url('images/background5.jpg'); */
	background-position: center;
}

.jumbotron p {
	font-size: 21px;
	margin: 0px;
}

.list-group {
	margin: 0px;
}

.list-group-item {
	padding: 0px 0px 0px 5px;
}

.list-group ul {
	list-style-type: none;
	margin: 0px;
	-webkit-padding-start: 0px;
}

.list-group li {
	padding-left: 5px;
	border: 0px;
	color: white;
	background-color: transparent;
}
</style>

</head>

<body>

	<div class="firstContainer">
		<div class="container" style="width: 65%; height: 100%">

			<%@include file="/WEB-INF/includes/navbar.jsp"%>

			<div class="jumbotron" style="margin-top: 100px; padding: 5px; height: 20%">

				<%@include file="/WEB-INF/includes/mycarousel.jsp"%>

			</div>
			<div class="mainContainer">
				<div class="jumbotron" style="width: 25%; height: auto; float: left; padding: 0px;">
					<div class="list-group">
						<div class="list-group-item active">Area de Cliente</div>
						<ul>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
						</ul>
					</div>
				</div>
				<div class="jumbotron" style="width: 70%; height: 54%; float: right;"></div>
				<div class="jumbotron" style="width: 25%; height: auto; float: left; padding: 0px;">
					<div class="list-group">
						<div id="ulHeader" class="list-group-item active">Area do
							Administrador</div>
						<ul>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
							<li class="list-group-item">We provide 24*7 support.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div>Bruno 
<%
session = request.getSession();
// 	session.setAttribute("user", User);
	out.println(session.getId());

%>
</div>
	
	
		<div id="myModal" class="modal fade">
			<div class="modal-dialog" style="width: 350px;">
				<div class="modal-content"
					style="background-color: rgba(255, 255, 255, 0.6); border-radius: 20px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">Login</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" action="makeLogin" method="post" role="form">
							<div class="form-group">
								<div class="col-xs-10">
									<input type="text" class="form-control" name="inputUserOrEmail" placeholder="Nome ou E-mail">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<input type="password" class="form-control" name="inputPassword"
										placeholder="Senha">
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<div class="checkbox">
										<label><input type="checkbox"> Lembrar de mim</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-10">
									<button type="submit" class="btn btn-primary">Login</button>
									<button type="button" class="growl">test</button>
									
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>