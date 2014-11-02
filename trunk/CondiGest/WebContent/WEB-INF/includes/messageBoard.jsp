<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-1"></div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10"
					style="background-color: #CAD0DD; margin-top: 10px; margin-bottom: 10px; border-radius: 10px">
					<div class="row" style="margin-bottom: 30px">
						<div class="col-md-12">
							<h2 style="color: #3887BE; text-align: center;">
								<strong>Enviar uma mensagem</strong>
							</h2>
						</div>
					</div>
					<form action="sendMessage" method="post" id="messageForm">
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="form-group">
									<div class="input-group">
										<label><strong>De: </strong></label>
										<c:choose>
											<c:when test="${currentUser!=null}">
												<input type="hidden" class="form-control" name="idSender"
													value="${currentUser.id_user}">
												<c:out value="${currentUser.name}" />
											</c:when>
											<c:otherwise>currentUser null
												</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="form-group">
									<div class="input-group">
										<label><strong>Para: </strong></label>
										<c:choose>
											<%-- if the currentUser is administrator --%>
											<c:when test="${currentUser.typeOfUser == true}">
												<select class="form-control" name="idReceiver">
													<c:forEach items="${listOfAllUsers}" var="user">
														<c:if test="${user.typeOfUser != true}">
															<option value="${user.id_user}">
																<c:out value="${user.name}" />
															</option>
														</c:if>
													</c:forEach>
												</select>
											</c:when>
											<c:otherwise>
												<c:forEach items="${listOfAllUsers}" var="user">
													<c:if test="${user.typeOfUser == true}">
														<input type="hidden" class="form-control" name="idReceiver"
															value="${user.id_user}">
														<c:out value="${user.name}" />
													</c:if>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="form-group">
									<div class="input-group">
										<label>Mensagem:</label>
										<textarea name="inputMessage" id="inputMessage"
											maxlength="255" class="form-control" cols="100%" rows="3"
											style="resize: none;"></textarea>
									</div>
								</div>
							</div>
							<div class="col-md-1"></div>
						</div>
						<div class="row" style="margin-bottom: 30px; margin-top: 20px">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<input type="submit" class="btn btn-lg btn-primary pull-right"
									value="Enviar">
							</div>
							<div class="col-md-1"></div>
						</div>
					</form>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-2"></div>
		</div>
	</div>
</div>