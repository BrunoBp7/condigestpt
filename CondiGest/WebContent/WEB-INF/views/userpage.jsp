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
<script type="text/javascript" src="resources/js/jquery.bootstrap-growl.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/customJs.js"></script>
<script type="text/javascript" src="resources/dist/js/bootstrapValidator.js"></script>
<script type="text/javascript"  src="http://bootstrap-growl.remabledesigns.com/js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-tooltip.js"></script>


<script type="text/javascript">
$(document).ready(function() {
	
});

function errorLogin(){
	$.growl("Nome de Utilizador ou senha de acesso errado!", {
		type: "danger",
		allow_dismiss: false,
		delay: 2500,
		animate: {
			enter: 'animated bounceIn',
			exit: 'animated bounceOut'
		}
	});	
}

function successLogin(name){
	$.growl("Bem-vindo " + name + "!", {
		type: "success",
		allow_dismiss: false,
		delay: 2500,
		animate: {
			enter: 'animated bounceIn',
			exit: 'animated bounceOut'
		}
	});	
}
</script>
</head>

<body>

	<div class="bigContainer" style="background-color: #E3EBED; padding: 0px; margin: 0px; width: 100%; overflow-x: hidden;">
		<div class="header">
			<div class="row">
				<div class="col-md-12">
					<%@include file="/WEB-INF/includes/navigation.jsp"%>
				</div>
			</div>
		</div>
		<div class="content" style="padding-top: 8em; padding-bottom: 5em;">
			<div class="row" style="width: 100%">
				<div class="col-md-12">
					<%@include file="/WEB-INF/includes/userprofile.jsp"%>
					<c:if test="${errorMessage!= null}">
						<script type="text/javascript">
							errorLogin();
 						</script>
					</c:if>
					<c:if test="${currentUser!= null}">
					<input type="hidden" id="userSpan" value="${currentUser.name}"/>
						<script type="text/javascript">
						var nome = $('#userSpan').val();
							successLogin(nome);
 						</script>
					</c:if>				
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="navbar navbar-default navbar-static-bottom">
				<p class="navbar-text pull-daft">© 2014</p>
			</div>
		</div>
	</div>
</body>
</html>