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
<link href="resources/css/customStyle.css" rel="stylesheet">
<link rel="stylesheet" href="resources/dist/css/bootstrapValidator.css"/>
<link rel="stylesheet" href="resources/css/animate.css" />
 


								<!-- JS Files -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript"  src="http://bootstrap-growl.remabledesigns.com/js/bootstrap-growl.min.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/customJs.js"></script>
<script type="text/javascript" src="resources/dist/js/bootstrapValidator.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#userRegisterForm').bootstrapValidator();
		
		function message(){
			$.growl("I'll use Bootstrap Success Alert Styling!", {
				type: "success",
				animate: {
					enter: 'animated fadeInDown',
					exit: 'animated fadeOutUp'
				}
			});
		};
	});
</script>
</head>

<body>

	<div class="bigContainer" style="background-color: ; padding: 0px; margin: 0px; width: 100%; overflow-x: hidden;">
		<div class="header">
			<div class="row">
				<div class="col-md-12">
					<%@include file="/WEB-INF/includes/navigation.jsp"%>
				</div>
			</div>
		</div>
		<div class="content" style="padding-top: 8em; padding-bottom: 5em;">
			<div class="row">
				<div class="col-md-2">
				<c:if test="${listOfUsers != null}">
					<c:forEach items="${listOfUsers}" var="user">
						<c:out value="${user.name}" />
						<br>
					</c:forEach>
				</c:if>
				</div>
					<div class="col-md-8">
						<%@include file="/WEB-INF/includes/userregisterform.jsp"%>
							<c:if test="${user != null}">
								<c:out value="${user.name}"/><br>
								<c:out value="${user.userName}"/>
							</c:if>						
					</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<div class="footer">
			<div class="navbar navbar-default navbar-static-bottom">
				<p class="navbar-text pull-daft">© 2014</p>
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