<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="formcontent">
    <div class="row">
        <form action="saveUser" method="get" role="form">
            <div class="col-lg-12">
				<div class="well well-sm"><span class="fa fa-tag" style="color: #428bca"></span><strong> Preenchimento Obrigatório</strong></div>
				<div class="row">
           		<div class="col-lg-9">
                  <div class="form-group">
                    <label for="InputName">Nome Completo</label>
                    <div class="input-group">
		                <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nome" required>
                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
                    </div>
                </div>
                </div>
                <div class="col-lg-3">
                  <div class="form-group">
                    <label for="InputUserType">Tipo de Utilizador</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="userType" id="userType" placeholder="Nome" required>
                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
                    </div>
                </div>
                </div>
                </div>
                <div class="row">
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputEmail">Email</label>
		                    <div class="input-group">
		                  		<span class="input-group-addon" title="Preenchimento Obrigatório">@</span>
		                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		            </div>
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputAlternativeEmail">Email Alternativo</label>
		                    <div class="input-group">
		                  		<span class="input-group-addon" title="Preenchimento Obrigatório">@</span>
		                        <input type="email" class="form-control" id="alternativeEmail" name="alternativeEmail" placeholder="Email Alternativo" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon"></span></span>
		                    </div>
		                </div>
		           </div>
                </div>
                <div class="row">
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputContact">Contacto</label>
		                    <div class="input-group">
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-phone"></span></span>
		                        <input type="text" class="form-control" id="telephone" name="telephone" placeholder="Contacto" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		            </div> 
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputAlternativeTelephone">Contacto Alternativo</label>
		                    <div class="input-group">
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-earphone"></span></span>
		                        <input type="text" class="form-control" id="alternativeTelephone" name="alternativeTelephone" placeholder="Contacto Alternativo" required/>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon"></span></span>
		                    </div>
		                </div>
		           </div>
                </div>
                <div class="row">
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputbirthdayField">Data de Nascimento</label>
		                    <div class="input-group date">
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-calendar"></span></span>
		                		<input type='text' class="form-control" id="birthdayField" name="birthdayField" placeholder="Data de Nascimento" required/>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		            </div>
            		<div class="col-lg-6">
		                <div class="form-group">
		                    <label for="InputIdentificationNumber">Numero de identificação</label>
		                    <div class="input-group">
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-calendar"></span></span>
	                        <input type="text" class="form-control" id="nationalIdNumber" name="nationalIdNumber" placeholder="Numero de identificação" required>
	                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		           </div>
                </div>
                <div class="row">
            		<div class="col-lg-4">
		                <div class="form-group">
		                    <label for="InputUserName">Nome de utilizador</label>
		                    <div class="input-group">
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-users"></span></span>
		                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Nome de utilizador" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		            </div>
            		<div class="col-lg-4">
		                <div class="form-group">
		                    <label for="InputPassword">Senha de acesso</label>
		                    <div class="input-group"> 
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-lock"></span></span>
		                        <input type="password" class="form-control" id="password" name="password" placeholder="Senha de acesso" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		           </div>
		           <div class="col-lg-4">
		                <div class="form-group">
		                    <label for="InputConfirmationPassword">Confirme a Senha de acesso</label>
		                    <div class="input-group"> 
		                		<span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon glyphicon-lock"></span></span>
		                        <input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation" placeholder="Confirme a senha de acesso" required>
		                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="fa fa-tag" style="color: #428bca"></span></span>
		                    </div>
		                </div>
		           </div>
                </div>
                <div class="form-group">
                    <label for="InputMessage">Observações</label>
                    <div class="input-group">
                        <textarea name="InputMessage" id="InputMessage" class="form-control" rows="3" required></textarea>
                        <span class="input-group-addon" title="Preenchimento Obrigatório"><span class="glyphicon"></span></span>
                    </div>
                </div>
                <input type="submit" id="submit" value="Salvar" class="btn btn-success pull-right">
            </div>
        </form>
        <div class="col-lg-5 col-md-push-1">
            <div class="col-md-12">
                <div class="alert alert-success">
                    <strong><span class="glyphicon glyphicon-ok"></span> Success! Message sent.</strong>
                </div>
                <div class="alert alert-danger">
                    <span class="glyphicon glyphicon-remove"></span><strong> Error! Please check all page inputs.</strong>
                </div>
            </div>
        </div>
    </div>
</div>