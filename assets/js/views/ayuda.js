define([
	'jquery',
	'underscore',
	'backbone',
	'select2.min'
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var HelpView = Backbone.View.extend({

		el: '#maincontainer',


		homescreen: ['<div class="homescreen">',
			'<h2>&nbsp; Ayuda de CR<b>AA</b>CK',
			'</h2>',
			'<!-- Nav tabs -->',
			'<p style="padding:0 20px;text-align:justify">',
			'CRAACK es una plataforma online que ayuda a personas como tú',
			' a encontrar su entrenador perfecto en cualquier área del deporte y bienestar.',
			'</p>',
			'<p style="padding:0 20px;text-align:justify">',
			'Ahora podrás mejorar en aquella disciplina en que siempre quisiste ser bueno, ',
			'lograr tus metas, con los mejores profesores, ',
			'cerca de tu ubicación y con un gran equipo… tus Amigos.',
			'</p>',



			'<div>',
			'<div style="height:5vw;">&nbsp;</div>',
			'</div>'
		].join(''),

		initialize: function () {
			this.el = this.el || '#maincontainer';
			console.log('initializing landing');


		},

		render: function () {
			//console.log('rendering landing', jQuery(this.el), this.homelogo);
			jQuery(this.el).html(this.homescreen);




		}



	});


	return HelpView;
});