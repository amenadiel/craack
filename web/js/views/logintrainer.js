define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var LoginTrainerView = Backbone.View.extend({

		el: '#modals',

		content: [
			'<div class="modal" id="logintrainer" tabindex="-1" role="dialog" aria-labelledby="logintrainerLabel" aria-hidden="true">',
			'<div class="modal-dialog">',
			'<div class="modal-content">',
			'<div class="modal-header">',
			'<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>',
			'<h4 class="modal-title" id="logintrainerLabel"><i class="glyphicon glyphicon-time"></i> Iniciar Sesión como Entrenador</h4>',
			'</div>',
			'<div class="modal-body">',
			'<form role="form">',
			'<div class="form-group" id="formlogintrainer">',
			'<label for="logintrainerInputEmail1">Email</label>',
			'<input type="email" class="form-control" id="logintrainerInputEmail1" placeholder="Ingresar email">',
			'</div>',
			'<div class="form-group">',
			'<label for="logintrainerInputPassword1">Password</label>',
			'<input type="password" class="form-control" id="logintrainerInputPassword1" placeholder="Ingresar Password">',
			'</div>',
			'</form>',
			'</div>',
			'<div class="modal-footer">',
			'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>',
			'<button type="button" class="btn btn-okcraack">Login</button>',
			'</div>',
			'</div>',
			'</div>',
			'</div>',
		].join(''),

		initialize: function () {

			jQuery(this.el).append(this.content);

		},



	});


	return LoginTrainerView;
});