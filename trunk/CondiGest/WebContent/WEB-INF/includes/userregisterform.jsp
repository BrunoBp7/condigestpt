<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="formcontent">
	<div class="row">
		<form action="saveUser" method="post" id="userRegisterForm"
			data-bv-message="This value is not valid"
			data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
			data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
			data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
			<div class="col-lg-12">
				<div class="well well-sm">
					<strong style="font-size: 18px">Dados do Utilizador</strong>
					<div style="float: right;">
						<span class="fa fa-tag" style="color: #428bca"></span><strong>
							Preenchimento Obrigatório</strong>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-9">
						<div class="form-group">
							<label for="InputName" class="control-label">Nome
								Completo</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="glyphicon glyphicon-user"></span></span> <input type="text"
									class="form-control" name="name" id="name" placeholder="Nome"
									required data-bv-notempty-message="Preenchimento obrigatório">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group" style="float: right;">
							<label for="InputUserType" class="control-label">Tipo de
								Utilizador</label>
							<div class="input-group">
								<select class="form-control" name="userType">
									<option value="false">Utilizidor normal</option>
									<option value="true">Administrador</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputEmail" class="control-label">Email</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><i
									class="glyphicon glyphicon-envelope"></i></span> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Email" required
									data-bv-notempty-message="Preenchimento obrigatório"
									data-bv-emailaddress-message="Formato de E-mail inválido">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputAlternativeEmail" class="control-label">Email
								Alternativo</label>
							<div class="input-group">
								<span class="input-group-addon">@</span> <input type="email"
									class="form-control" id="alternativeEmail"
									name="alternativeEmail" placeholder="Email Alternativo"
									data-bv-emailaddress-message="Formato de E-mail inválido">
								<span class="input-group-addon"><span class="glyphicon"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputContact" class="control-label">Contacto</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="glyphicon glyphicon-phone"></span></span> <input type="text"
									class="form-control" id="telephone" name="telephone"
									placeholder="Contacto" required data-bv-integer="true"
									data-bv-notempty-message="Preenchimento obrigatório"
									data-bv-integer-message="Apenas são permitos algarismos">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputAlternativeTelephone" class="control-label">Contacto
								Alternativo</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="glyphicon glyphicon-earphone"></span></span> <input type="text"
									class="form-control" id="alternativeTelephone"
									name="alternativeTelephone" placeholder="Contacto Alternativo"
									data-bv-integer="true"
									data-bv-integer-message="Apenas são permitos algarismos" /> <span
									class="input-group-addon"><span class="glyphicon"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputbirthdayField" class="control-label">Data
								de Nascimento</label>
							<div class="input-group date">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="glyphicon glyphicon-calendar"></span></span> <input type='text'
									class="form-control" id="birthdayField" name="birthdayField"
									placeholder="Data de Nascimento" required
									data-bv-notempty-message="Preenchimento obrigatório"
									data-bv-date-separator="-" data-bv-date="true"
									data-bv-date-format="YYYY-MM-DD"
									data-bv-date-message="Formato de data inválido (Ex. 1982-12-25)" />
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="InputIdentificationNumber" class="control-label">Numero
								de identificação</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="glyphicon glyphicon-calendar"></span></span> <input type="text"
									class="form-control" id="nationalIdNumber"
									name="nationalIdNumber" placeholder="Numero de identificação"
									required data-bv-notempty-message="Preenchimento obrigatório">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<div class="form-group">
							<label for="InputUserName" class="control-label">Nome de
								utilizador</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-users"></span></span> <input type="text"
									class="form-control" id="userName" name="userName"
									placeholder="Nome de utilizador"
									data-bv-message="The username is not valid" required
									data-bv-notempty-message="Preenchimento obrigatório"
									pattern="^[a-zA-Z0-9]+$"
									data-bv-regexp-message="O nome de utilizador apenas comporta letras e dígitos"
									data-bv-stringlength="true" data-bv-stringlength-min="5"
									data-bv-stringlength-max="25"
									data-bv-stringlength-message="O nome de utilizador requer no minimo 6 caracteres até a um maximo de 25 "
									data-bv-different="true" data-bv-different-field="password"
									data-bv-different-message="O nome de utilizador não pode ser o mesmo da sua senah de acesso">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-group">
							<label for="InputPassword" class="control-label">Senha de
								acesso</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-key fa-fw"></span></span> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Senha de acesso" required
									data-bv-notempty-message="Preenchimento obrigatório"
									data-bv-identical="true"
									data-bv-identical-field="passwordConfirmation"
									data-bv-identical-message="Deve reescrever a mesma senha no campo de confirmação de senha"
									data-bv-different="true" data-bv-different-field="userName"
									data-bv-different-message="O nome de utilizador não pode ser o mesmo da sua senha de acesso">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-group">
							<label for="InputConfirmationPassword" class="control-label">Confirme
								a Senha de acesso</label>
							<div class="input-group">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-key fa-fw"></span></span> <input type="password"
									class="form-control" id="passwordConfirmation"
									name="passwordConfirmation" placeholder="Confirme a senha"
									required data-bv-notempty-message="Preenchimento obrigatório"
									data-bv-identical="true" data-bv-identical-field="password"
									data-bv-identical-message="Confirme a mesma senha"
									data-bv-different="true" data-bv-different-field="userName"
									data-bv-different-message="O nome de utilizador não pode ser o mesmo da sua senha de acesso">
								<span class="input-group-addon"
									title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<label for="InputMessage" class="control-label">Observações</label>
						<div class="input-group">
							<textarea name="inputMessage" id="InputMessage"
								class="form-control" rows="3"></textarea>
							<span class="input-group-addon"><span class="glyphicon"></span></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<div class="well well-sm">
							<strong style="font-size: 18px">Dados da morada</strong>
							<div style="float: right;">
								<span class="fa fa-tag" style="color: #428bca"></span><strong>
									Preenchimento Obrigatório</strong>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-7">
						<div class="form-group">
							<label for="inputStreet" class="control-label">Endereço</label>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-home fa-lg"></i></span> <input type="text"
									class="form-control" id="street" name="street"
									placeholder="Endereço" required
									data-bv-notempty-message="Preenchimento obrigatório"> <span
									class="input-group-addon" title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="form-group">
							<label for="postalCode" class="control-label">C. Postal</label>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-home fa-lg"></i></span> <input type="text"
									class="form-control" id="postalCode" maxlength="8"
									name="postalCode" placeholder="C.Postal" required
									data-bv-notempty-message="Preenchimento obrigatório"> <span
									class="input-group-addon" title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<label for="inputState" class="control-label">Localidade</label>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-flag fa-lg"></i></span> <input type="text"
									class="form-control" id="state" name="state"
									placeholder="Localidade" required data-bv-regexp="true"
									data-bv-regexp-regexp="^[a-z\s\íãçõéã]+$"
									data-bv-regexp-message="Apenas são permitidos caracteres alfabéticos e espaços."
									data-bv-notempty-message="Preenchimento obrigatório"> <span
									class="input-group-addon" title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="inputCity" class="control-label">Cidade</label>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-flag fa-lg"></i></span> <input type="text"
									class="form-control" id="city" name="city"
									placeholder="Cidade" required data-bv-regexp="true"
									data-bv-regexp-regexp="^[a-z\s\íãçõéã]+$"
									data-bv-regexp-message="Apenas são permitidos caracteres alfabéticos e espaços."
									data-bv-notempty-message="Preenchimento obrigatório"> <span
									class="input-group-addon" title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<label for="inputCountry" class="control-label">País</label>
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-flag fa-lg"></i></span> <input type="text"
									class="form-control" id="country" name="country"
									placeholder="País" required data-bv-regexp="true"
									data-bv-regexp-regexp="^[a-z\s\íãçõéã]+$"
									data-bv-regexp-message="Apenas são permitidos caracteres alfabéticos e espaços."
									data-bv-notempty-message="Preenchimento obrigatório"> <span
									class="input-group-addon" title="Preenchimento Obrigatório"><span
									class="fa fa-tag" style="color: #428bca"></span></span>
							</div>
						</div>
					</div>
				</div>
				<input type="submit" value="Registar"
					class="btn btn-default pull-right">
			</div>
		</form>
		<!--         <div class="col-lg-5 col-md-push-1"> -->
		<!--             <div class="col-md-12"> -->
		<!--                 <div class="alert alert-success"> -->
		<!--                     <strong><span class="glyphicon glyphicon-ok"></span> Success! Message sent.</strong> -->
		<!--                 </div> -->
		<!--                 <div class="alert alert-danger"> -->
		<!--                     <span class="glyphicon glyphicon-remove"></span><strong> Error! Please check all page inputs.</strong> -->
		<!--                 </div> -->
		<!--             </div> -->
		<!--         </div> -->
	</div>
</div>