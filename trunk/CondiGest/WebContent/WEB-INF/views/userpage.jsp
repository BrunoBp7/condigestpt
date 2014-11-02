<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true"%>



<html>
<head>
<title>CondiGest, gestão de condomínios</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<!-- Css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link href="resources/css/sb-admin-2.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/css/customStyle.css" rel="stylesheet">
<link rel="stylesheet" href="resources/dist/css/bootstrapValidator.css" />
<link rel="stylesheet" href="resources/css/animate.css" />



<!-- JS Files -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.bootstrap-growl.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/customJs.js"></script>
<script type="text/javascript"
	src="resources/dist/js/bootstrapValidator.js"></script>
<script type="text/javascript"
	src="http://bootstrap-growl.remabledesigns.com/js/bootstrap-growl.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap-tooltip.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
	
	});

	function errorLogin() {
		$.growl("Nome de Utilizador ou senha de acesso errado!", {
			type : "danger",
			placement : {
				from : "top",
				align : "center"
			},
			allow_dismiss : false,
			delay : 2500,
			animate : {
				enter : 'animated bounceIn',
				exit : 'animated bounceOut'
			}
		});
	}

	function successLogin(name) {
		$.growl("Bem-vindo " + name + "!", {
			type : "info",
			placement : {
				from : "top",
				align : "center"
			},
			allow_dismiss : false,
			delay : 2500,
			animate : {
				enter : 'animated bounceIn',
				exit : 'animated bounceOut'
			}
		});
	}
</script>
</head>

<body>

	<div class="bigContainer"
		style="background-color: #E3EBED; padding: 0px; margin: 0px; width: 100%; overflow-x: hidden;">
		<div class="header">
			<div class="row">
				<div class="col-md-12">
					<jsp:include page="/WEB-INF/includes/navigation.jsp"/>
				</div>
			</div>
		</div>
		<div class="content" style="padding-top: 8em; padding-bottom: 5em;">
			<div class="row" style="width: 100%">
				<div class="col-md-12">
					<div class="container">
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<h3>
									Perfil de
									<c:out value="${currentUser.name}"></c:out>
								</h3>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="row"
									style="background-color: white; border-radius: 15px; margin-bottom: 10px">
									<div class="col-md-12"
										style="padding-left: 5px; padding-right: 5px;">
										<div class="row" style="margin: 5px;">
											<div class="col-md-12"
												style="background: linear-gradient(#F8F9FA, #E3EBED); border-radius: 15px; padding: 5px">
												<div class="col-md-1 thumbnail" style="margin: 0px">
													<img alt="${currentUser.name}"
														src="images/imagesUsers/foto.png">
												</div>
												<div class="col-md-11" style="padding-left: 25px">
													<div class="row">
														<label><strong>User</strong></label>
													</div>
								<div class="row">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-default active">
										<input type="radio" name="radioButtons" id="generalInfoId" checked>Geral
										</label>
										<label class="btn btn-default">
										<input type="radio" name="radioButtons" id="messagesBoardId">Mensagens
										<span class="badge progress-bar-danger">
												<c:out value="${fn:length(allSentMessages)}" />
										</span>
										</label>
										<label class="btn btn-default">
										<input type="radio" name="radioButtons" id="otheonsId">Outra opção
										</label>
									</div>
<%-- 									<a style="float: right;" href="getAllMessages?id=${currentUser.id_user}">Inbox --%>
<!-- 										<span class="badge"></span> -->
<!-- 									</a> -->
									
									
<%-- 									<c:if test="${allSentMessages!=null}"> --%>
<%-- 										<c:forEach items="${allSentMessages}" var="message"> --%>
<%-- 											<c:out value="${message.message}" /> --%>
<!-- 											<br> -->
<%-- 										</c:forEach> --%>
<%-- 									</c:if> --%>
<%-- 									<c:if test="${fn:length(allSentMessages) > 0}"> --%>
<%-- 										<span class="badge"> <c:out --%>
<%-- 												value="${fn:length(allSentMessages)}" /> --%>
<!-- 										</span> -->
<%-- 									</c:if> --%>

								</div>


												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="col-md-1"></div>
						</div>
					</div>

					<div class="container" id="divToInclude">
						<jsp:include page="/WEB-INF/includes/userprofile.jsp"/>
					</div>
					<c:if test="${errorMessage!= null}">
						<script type="text/javascript">
							errorLogin();
						</script>
					</c:if>
					<c:if test="${(currentUser!= null) && (loginOk != null)}">
						<input type="hidden" id="userSpan" value="${currentUser.name}" />
						<script type="text/javascript">
							var nome = $('#userSpan').val();
							successLogin(nome);
						</script>
						<c:remove var="loginOk" scope="session" />
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