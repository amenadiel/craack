define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var LoginUserView = Backbone.View.extend({

		el: '#modals',

		content: [
			'<div class="modal" id="loginuser" tabindex="-1" role="dialog" aria-labelledby="loginuserLabel" aria-hidden="true">',
			'<div class="modal-dialog">',
			'<div class="modal-content">',
			'<div class="modal-header">',
			'<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>',
			'<h4 class="modal-title" id="loginuserLabel"><i class="glyphicon glyphicon-user"></i> Iniciar Sesión como Alumno</h4>',
			'</div>',
			'<div class="modal-body">',
			'<div class="row">',
			'<div class="col-sm-5 col-xs-5">',
			'<img src="/assets/images/avatar.png" alt="..." class="img-rounded">',
			'</div>',
			'<div class="col-sm-6 col-xs-6">',
			'<form role="form" class="form-inline">',
			'<div class="form-group" id="formloginuser">',
			//'<i class="glyphicon glyphicon-envelope"></i>',
			'<input type="email" class="form-control" id="loginuserInputEmail1" placeholder="email">',
			'</div>',
			'<div class="form-group">',
			'<div id="status"></div>',
			//'<i class="glyphicon glyphicon-phone"></i>',
			'<input type="celular" class="form-control" id="loginuserInputCelular" placeholder="celular">',
			'</div>',
			'<div class="form-group">',
			//'<i class="glyphicon glyphicon-envelope"></i>',
			'<input type="password" class="form-control" id="loginuserInputPassword1" placeholder="password">',
			'</div>',
			'</form>',
			'</div>',
			'</div>',
			'</div>',
			'<div class="modal-footer">',
			'<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>',
			'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>',
			'<button type="button" class="btn btn-okcraack">Login</button>',
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


	return LoginUserView;
});