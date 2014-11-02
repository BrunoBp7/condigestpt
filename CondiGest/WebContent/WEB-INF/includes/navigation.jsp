<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>



<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="width: 100%; position: fixed;">
	<div class="navbar-header">
		<span id="logoid" class="navbar-brand" style="font-size: 24px;"><a
			href="main" style="text-decoration: none;">Condigest v1.0</a><span
			style="font-size: 10px;"> beta</span></span>
	</div>

	<ul class="nav navbar-top-links navbar-right">
		<li><a href="test">TESTES</a></li>
		<li><a href="#">Empresa</a></li>
		<li class="menu-item dropdown"><a class="dropdown-toggle"
			href="#">Serviços</a></li>
		<li><a href="registerUser">Clientes</a></li>
		<li><a href="#">Orçamentos</a></li>
		<li><a href="#">Contatos</a></li>

		<!-- 	    SHOWS IF THE USER CONNECTED -->
		<c:if test="${currentUser != null}">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-lg"></i>
					<i class="badge progress-bar-danger"> <c:out
							value="${fn:length(allSentMessages)}" /></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<c:forEach items="${allReceivedMessages}" var="message">
						<li><a href="#">
									<div>
										<strong><c:out value="${message.messageSender.name}" /></strong>
										<span class="pull-right text-muted">
										<em><c:out value='${message.date}'/></em>
										
<%-- 									<em><fmt:formatDate value='${message.date}' pattern='yy-MMM-dd' /></em>  --%>
										</span>
									</div>
									<div style="word-wrap: break-word;">
										<c:out value="${message.message}" />
									</div>
						</a></li>
						<li class="divider"></li>
					</c:forEach>

					<li><a class="text-center" href="#"> <strong>Ler
								todas as mensagens</strong> <i class=""></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i
					class="glyphicon glyphicon-th-list"></i> <i class="caret"></i>
			</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li><a href="#">
							<div>
								<p>
									<strong>Task 1</strong> <span class="pull-right text-muted">40%
										Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%">
										<span class="sr-only">40% Complete (success)</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>Task 2</strong> <span class="pull-right text-muted">20%
										Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
										style="width: 20%">
										<span class="sr-only">20% Complete</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>Task 3</strong> <span class="pull-right text-muted">60%
										Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-warning"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%">
										<span class="sr-only">60% Complete (warning)</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>Task 4</strong> <span class="pull-right text-muted">80%
										Complete</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="80" aria-valuemin="0"
										aria-valuemax="100" style="width: 80%">
										<span class="sr-only">80% Complete (danger)</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>See
								All Tasks</strong> <i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-tasks --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i
					class="glyphicon glyphicon-bell"></i> <i class="caret"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> New Comment <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
									class="pull-right text-muted small">12 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> Message Sent <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> New Task <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
									class="pull-right text-muted small">4 minutes ago</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>See
								All Alerts</strong>
					</a></li>
				</ul> <!-- /.dropdown-alerts --></li>

		</c:if>
		<!-- /.dropdown -->
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <c:choose>
					<c:when test="${currentUser!=null}">
						<c:out value="${currentUser.userName}" />
						<i class="caret"></i>
					</c:when>
					<c:otherwise>
						<i class="glyphicon glyphicon-user"></i>
						<i class="caret"></i>
					</c:otherwise>
				</c:choose>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="userProfile"><i
						class="glyphicon glyphicon-user"></i> User Profile</a></li>
				<li><a href="#"><i class="glyphicon glyphicon-cog"></i>
						Settings</a></li>
				<li class="divider"></li>
				<li><c:choose>
						<c:when test="${currentUser!=null}">
							<a href="makeLogout"><i class="glyphicon glyphicon-log-out"></i>
								Sair</a></li>
				</c:when>
				<c:otherwise>
					<a id="loginButton" href="#"><i
						class="glyphicon glyphicon-log-in"></i> Conectar-se</a></li>
		</c:otherwise>
		</c:choose>

	</ul>
	<!-- /.dropdown-user -->
	</li>
	<!-- /.dropdown -->
	</ul>
	<!-- /.navbar-top-links -->
</nav>
