<%@ page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page session="true"%>



<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript" src="resources/js/jquery.bootstrap-growl.js"></script>


<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Timeline CSS -->
<link href="resources/css/plugins/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/fonts/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/js/plugins/metisMenu/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="resources/js/plugins/morris/raphael.min.js"></script>
<script src="resources/js/plugins/morris/morris.min.js"></script>
<script src="resources/js/plugins/morris/morris-data.js"></script>

<!-- Custom Theme JavaScript -->
<script src="resources/js/sb-admin-2.js"></script>


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

	<div class="container">

			<%@include file="/WEB-INF/includes/navigation.jsp"%>

			
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