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
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".navbar-right a").click(function(){ 
			$("#myModal").modal('show');
		});
	});
</script>
</head>
<body style="background-color: grey">	
<div class="container">
	<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header ">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
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
				<li><a data-html="true" href="#" data-toggle="popover" data-content="Here">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

	<div class="jumbotron" style="margin-top: 80px">
		<img src="images/Header.jpg" class="img-thumbnail" alt="CondiGest">
	</div>

		<div>
			<div class="jumbotron" style="width: 25%; height: 300px; float: left;"></div>
			<div class="jumbotron" style="width: 70%; height: 300px; float: right;"></div>
		</div>

		<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<div class="col-xs-10">
								<input type="email" class="form-control" id="inputEmail" placeholder="Email">
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-10">
								<input type="password" class="form-control" id="inputPassword" placeholder="Password">
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
	<div class="jumbotron" style="float: left; width: 100%">
	</div>

		<nav role="navigation" class="navbar navbar-default navbar-fixed-bottom">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="#" class="navbar-brand">Brand</a>
				</div>
			</div>
		</nav>
	</div>

</body>
</html>