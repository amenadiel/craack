define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var navmenuView = Backbone.View.extend({

		el: '#navmenu',

		content: [
			'<h1><a class="navmenu-brand" href="#">CRAACK</a></h1>',
			'<ul class="nav navmenu-nav">',
			'<li><a class="list-group-item " href="#/" data-toggle="offcanvas" data-target=".navmenu" data-canvas="body"><i class="fa fa-home"></i>Inicio</a></li>',
			'<li><a class="list-group-item " href="#/busqueda" data-toggle="offcanvas" data-target=".navmenu" data-canvas="body"><i class="marker"></i>Búsqueda de entrenamientos</a></li>',
			'<li><a class="list-group-item open_loginuser" href="#"><i class="alumno"></i>Iniciar sesión como alumno</a></li>',
			'<li><a class="list-group-item open_logintrainer" href="#"><i class="stopwatch"></i>Iniciar sesión como entrenador</a></li>',
			'<li><a class="list-group-item " data-toggle="modal" data-target="#inviteusers" href="#"><i class="users"></i>Invitar amigos</a></li>',
			'<li><a class="list-group-item "  href="#/help" data-toggle="offcanvas" data-target=".navmenu" data-canvas="body"><i class="ayuda"></i>Ayuda</a></li>',
			'</ul>'
		].join(''),

		initialize: function () {

			jQuery(this.el).html(this.content);

		},



	});


	return navmenuView;
});