define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var navbarView = Backbone.View.extend({

		el: '#navbar',

		content: [
			'<div style="padding:10px 10px 10px 0;" class="btn-group pull-left">',
			'<button class="btn btn-navbar sidebar-toggle btn-transparent" data-toggle="offcanvas" data-target=".navmenu" data-canvas="body" ><i class="fa fa-bars"></i> MENU</button>',
			'</div>',
			'<div class="navbar-brand navbar-brand-center" yield-to="title">',
			'<span>CR<b>AA</b>CK</span>',
			'</div>',
			'<div style="padding:10px;min-width:200px;" id="status"  class="btn-group pull-right" yield-to="navbarAction">',
			'<button class="btn btn-navbar btn-transparent open_loginuser" >INICIA SESIÓN</button>',
			'<button class="btn btn-navbar btn-transparent btn-border open_signupuser" >INSCRÍBETE</div>',
			'<div class="fb-login-button" style="display:none;" data-size="large" data-show-faces="false" data-auto-logout-link="true">',
			'</div>',
		].join(''),

		initialize: function () {

			jQuery(this.el).html(this.content);

		},



	});


	return navbarView;
});