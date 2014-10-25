$(document).ready(function() {
	$("#loginButton").click(function() {
		$("#loginModal").modal('show');
	});
	$("#loginModal").on('show.bs.modal', function() {
		$(".bigContainer").addClass('blur');
	});
	$("#loginModal").on('hide.bs.modal', function() {
		$(".bigContainer").removeClass('blur');
	});
	
	$(function() {
		$('#birthdayField').datepicker();
	    $( "#birthdayField" ).datepicker( "option", "dateFormat", "yy-mm-dd");
	});	
});