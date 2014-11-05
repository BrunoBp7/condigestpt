<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="col-md-1"></div>
<div class="col-md-10" style="padding: 5px;">
	<div class="row"
		style="background-color: white; border-radius: 15px; margin-top: 50px; padding: 5px">

		<div class="col-md-3 thumbnail" style="margin: 0px">
			<img alt="${currentUser.name}" src="images/imagesUsers/foto.png">
		</div>
		<div class="col-md-5">
			<div class="row">
				<div class="col-sm-12">
					<h3>
						<label>Informação de contacto</label>
					</h3>

				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>E-mail</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.primaryEmail}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>E-mail alternativo</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.alternativeEmail}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Telefone</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.phone}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Telefone # 2</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.phone}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h3>
						<label>Informação Geral</label>
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Nome</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.name}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Data de Nascimento</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.birthday}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Numero de identificação</label>
				</div>
				<div class="col-sm-7">
					<c:out value="${currentUser.taxIdentificationNumber}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Morada</label>
				</div>
				<div class="col-sm-7">
					<%-- 							<c:out value="${currentUser.phone}" /> --%>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<label>Permissões</label>
				</div>
				<div class="col-sm-7">
					<c:choose>
						<c:when test="${currentUser.typeOfUser == true}">
							<label class="label label-success">Administrador</label>
						</c:when>
						<c:otherwise>
							<label class="label label-success">Normal</label>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-sm-12">
					<h3>
						<label>Outras Informações</label>
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<label>Nome de Utilizador</label>
				</div>
				<div class="col-sm-6">
					<c:out value="${currentUser.userName}" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<label>Notas</label>
				</div>
				<div class="col-sm-6">
					<textarea rows="3" readonly="readonly" style="resize: none;"><c:out
							value="${currentUser.notes}" /></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<h3>
						<label>Opções</label>
					</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<a href="#"><label>Editar perfil </label>&nbsp;<i
						class="glyphicon glyphicon-pencil"></i></a>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<a href="#"><label>Alterar a senha de acesso</label></a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>
</div>