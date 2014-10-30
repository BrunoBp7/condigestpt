<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="container">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<h2>User: Perfil</h2>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="row" style="background-color: white; border-radius: 15px">
				<div class="col-md-12">
					<div class="row" style="margin-top: 30px; margin-bottom: 30px">
						<div class="col-md-1"></div>
						<div class="col-md-10" style="background: linear-gradient(#F8F9FA, #E3EBED); border-radius: 15px; padding: 5px">
							<div class="col-md-1 thumbnail" style="margin: 0px">
								<img alt="" src="resources/images/no-user.png">
							</div>
							<div class="col-md-11" style="padding-left: 25px">
								<div class="row">
									<label><strong>User</strong></label>
								</div>
								<div class="row">
									<div class="btn-group" data-toggle="buttons">
									  <label class="btn btn-default active">
									    <input type="radio" name="options" id="option1" checked>Geral</label>
									  <label class="btn btn-default">
									    <input type="radio" name="options" id="option2"> Mensagens
									    <span class="badge progress-bar-danger">
											<c:out value="${fn:length(allSentMessages)}"/>
										</span>
									    </label>
									  <span class="badge progress-bar-warning">30</span>
									  <span class="label label-danger label-as-badge">Yay! Rah!</span>
									  
									  
									  <label class="btn btn-default">
									    <input type="radio" name="options" id="option3"> Outra opção
									  </label>
									</div>								
								
<!-- 									<span class="label label-default">Default</span> -->
<!-- 									<span class="label label-primary">Primary</span> -->
<!-- 									<span class="label label-success">Success</span> -->
<!-- 									<span class="label label-info">Info</span> -->
<!-- 									<span class="label label-warning">Warning</span> -->
<!-- 									<span class="label label-danger">Danger</span> -->
									<a style="float: right;" href="getAllMessages?id=${currentUser.id_user}">Inbox <span
										class="badge"></span></a>
										
<!-- 										<span class="bagde"> -->
										<c:if test="${allSentMessages!=null}">
											<c:forEach items="${allSentMessages}" var="message">
												<c:out value="${message.message}"/><br>
											</c:forEach>
										</c:if>
										<c:if test="${fn:length(allSentMessages) > 0}" >
											<span class="badge">
											<c:out value="${fn:length(allSentMessages)}"/>
											</span>
										</c:if>
										
<!-- 										</span> -->
								</div>

								
							</div>
						</div>
						<div class="col-md-1"></div>
					</div>
					<img alt="" src="resources/images/no-user.png"
						style="width: 20%; height: 20%"> br<br>br<br>br<br>br<br>br<br>br<br>
				</div>
			</div>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>