define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var SignupTrainerView = Backbone.View.extend({

		el: '#modals',
		content: [
			'<div class="modal" id="signuptrainer" tabindex="-1" role="dialog" aria-labelledby="signuptrainerLabel" aria-hidden="true">',
			'<div class="modal-dialog">',
			'<div class="modal-content">',
			'<div class="modal-header">',
			'<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>',
			'<h4 class="modal-title" id="signuptrainerLabel"><i class="glyphicon glyphicon-time"></i> Inscribirse como Entrenador</h4>',
			'</div>',
			'<div class="modal-body">',
			'<div id="status"></div>',
			'<form role="form">',
			'<div class="form-group" id="formsignuptrainer">',
			'<label for="signuptrainerInputEmail1">Email</label>',
			'<input type="email" class="form-control" id="signuptrainerInputEmail1" placeholder="Ingresar email">',
			'</div>',
			'<div class="form-group">',
			'<label for="signuptrainerInputPassword1">Password</label>',
			'<input type="password" class="form-control" id="signuptrainerInputPassword1" placeholder="Ingresar Password">',
			'</div>',
			'</form>',
			'</div>',
			'<div class="modal-footer">',
			'<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>',
			'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>',
			'<button type="button" class="btn  btn-okcraack">Login</button>',
			'</div>',
			'</div>',
			'</div>',
			'</div>',
		].join(''),

		initialize: function (callback) {

			jQuery(this.el).append(this.content);
			if (callback) callback();
		},



	});


	return SignupTrainerView;
});