<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
/* .navbar { */
/* 	background-color: transparent; */
/* 	background: transparent; */
/* } */
.col-xs-10 {
	width: 100%;
}
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$(".navbar-right a").click(function() {
			$("#myModal").modal('show');
		});
	});
</script>

<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header" style="width: 25%">
			<button type="button" data-target="#navbarCollapse"	data-toggle="collapse" class="navbar-toggle">				
			</button>
			<img alt="Home" src="images/condigest.png" style="width: 65%">
		</div>
		<!-- Collection of nav links and other content for toggling -->
		<div id="navbarCollapse" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="main">Home</a></li>
				<li><a href="#">Serviço</a></li>
				<li><a href="#">Informações</a></li>
				<li><a href="#">Contactos</a></li>
				<li><a href="#" data-toggle="popover">Login</a></li>
			</ul>
		</div>
	</div>
</nav>

<div id="myModal" class="modal fade">
			<div class="modal-dialog" style="width: 350px;">
				<div class="modal-content" style="background-color: rgba(255, 255, 255, 0.6); border-radius: 20px;">
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
									<input type="password" class="form-control" id="inputPassword" placeholder="Senha">
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
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>