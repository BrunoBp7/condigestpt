<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="col-md-1"></div>
<div class="col-md-10" style="padding: 5px;">
	<section class="content">
		<!-- MAILBOX BEGIN -->
		<div class="mailbox row">
			<div class="col-xs-12">
				<div class="box box-solid">
					<div class="box-body">
						<div class="row">
							<div class="col-md-3 col-sm-4">
								<!-- BOXES are complex enough to move the .box-header around.
                                                 This is an example of having the box header within the box body -->
								<div class="box-header">
									<i class="fa fa-inbox"></i>
									<h3 class="box-title">Caixa de Entrada</h3>
								</div>
								<!-- compose message btn -->
								<a class="btn btn-block btn-primary" data-toggle="modal"
									data-target="#compose-modal"><i class="fa fa-pencil"></i>
									Enviar uma Mensagem</a>
								<!-- Navigation - folders-->
								<div style="margin-top: 15px;">
									<ul class="nav nav-pills nav-stacked">
										<li class="header">Pastas</li>
										<li class="active"><a href="#"><i class="fa fa-inbox"></i>
												Entrada (14)</a></li>
										<li><a href="#"><i class="fa fa-pencil-square-o"></i>
												Rascunhos</a></li>
										<li><a href="#"><i class="fa fa-mail-forward"></i>
												Enviadas</a></li>
										<li><a href="#"><i class="fa fa-star"></i> Eliminadas</a></li>
									</ul>
								</div>
							</div>
							<!-- /.col (LEFT) -->
							<div class="col-md-9">
								<div class="row pad"
									style="background-color: white; border-radius: 10px">
									<div class="col-md-3">
										<div class="panel-heading">
											<h3 class="panel-title">De: </h3>
										</div>
									</div>
									<div class="col-md-6">
										<div class="panel-heading">
											<h3 class="panel-title">Assunto: </h3>
										</div>
									</div><div class="col-md-3">
										<div class="panel-heading">
											<h3 class="panel-title">Data: </h3>
										</div>
									</div>
								</div>
								<!-- /.row -->

								<div class="table-responsive">
									<!-- THE MESSAGES -->
									<table class="table table-mailbox">
										<tr class="unread">
											<td class="name"><a href="#">John Doe</a></td>
											<td class="subject"><a href="#">Urgent! Please read</a></td>
											<td class="time">12:30 PM</td>
										</tr>
										<tr>
											<td class="name"><a href="#">John Doe</a></td>
											<td class="subject"><a href="#">Urgent! Please read</a></td>
											<td class="time">12:30 PM</td>
										</tr>
										<tr>
											<!-- 											<td class="small-col"><input type="checkbox" /></td> -->
											<!-- 											<td class="small-col"><i class="fa fa-star-o"></i></td> -->
											<td class="name"><a href="#">John Doe</a></td>
											<td class="subject"><a href="#">Urgent! Please read</a></td>
											<td class="time">12:30 PM</td>
										</tr>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.col (RIGHT) -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix">
						<div class="pull-right">
							<small>Showing 1-12/1,240</small>
							<button class="btn btn-xs btn-primary">
								<i class="fa fa-caret-left"></i>
							</button>
							<button class="btn btn-xs btn-primary">
								<i class="fa fa-caret-right"></i>
							</button>
						</div>
					</div>
					<!-- box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col (MAIN) -->
		</div>
		<!-- MAILBOX END -->

	</section>
	<!-- /.content -->
</div>

<!-- COMPOSE MESSAGE MODAL -->
<div class="modal fade" id="compose-modal" tabindex="-1" role="dialog"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">
					<i class="fa fa-envelope-o"></i> Compose New Message
				</h4>
			</div>
			<form action="#" method="post">
				<div class="modal-body">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">TO:</span> <input name="email_to"
								type="email" class="form-control" placeholder="Email TO">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">CC:</span> <input name="email_to"
								type="email" class="form-control" placeholder="Email CC">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">BCC:</span> <input
								name="email_to" type="email" class="form-control"
								placeholder="Email BCC">
						</div>
					</div>
					<div class="form-group">
						<textarea name="message" id="email_message" class="form-control"
							placeholder="Message" style="height: 120px;"></textarea>
					</div>
					<div class="form-group">
						<div class="btn btn-success btn-file">
							<i class="fa fa-paperclip"></i> Attachment <input type="file"
								name="attachment" />
						</div>
						<p class="help-block">Max. 32MB</p>
					</div>

				</div>
				<div class="modal-footer clearfix">

					<button type="button" class="btn btn-danger" data-dismiss="modal">
						<i class="fa fa-times"></i> Discard
					</button>

					<button type="submit" class="btn btn-primary pull-left">
						<i class="fa fa-envelope"></i> Send Message
					</button>
				</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->