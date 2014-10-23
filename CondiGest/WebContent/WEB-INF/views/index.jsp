<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page session="true"%>



<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

								<!-- Css -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link href="resources/css/sb-admin-2.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

								<!-- JS Files -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.bootstrap-growl.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#loginButton").click(function() {
			$("#loginModal").modal('show');
		});
		$("#loginModal").on('show.bs.modal', function() {
			$(".bigContainer").addClass('blur');
		});
		$("#loginModal").on('hide.bs.modal', function() {
			$(".bigContainer").removeClass('blur');
		});
		
		$(function() {
			$('#birthdayfield').datepicker();
		    $( "#birthdayfield" ).datepicker( "option", "dateFormat", "yy-mm-dd");
		});
	});
</script>

<style type="text/css">

.blur {
	-webkit-filter: blur(5px);
	-moz-filter: blur(5px);
	-o-filter: blur(5px);
	-ms-filter: blur(5px);
	filter: blur(5px);
}
</style>

</head>

<body>

	<div class="bigContainer" style="padding: 0px; margin: 0px; width: 100%; overflow-x: hidden;">
		<div class="header">
			<div class="row">
				<div class="col-md-12">
					<%@include file="/WEB-INF/includes/navigation.jsp"%>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="row" style="width: 100%">
				<div class="col-md-3">
					<%@include file="/WEB-INF/includes/sidemenu.jsp"%>
				</div>
				<div class="col-md-8" style=" padding-left: 0px; padding-right: 0px; padding-top: 15px; ">
					<%@include file="/WEB-INF/includes/userregisterform.jsp"%>
				</div>
				<div class="col-md-1">
				
				</div>
			</div>
		</div>
	</div>




	<div id="loginModal" class="modal fade">
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
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>