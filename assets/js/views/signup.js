define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var SignupView = Backbone.View.extend({

		el: '#maincontainer',


		homescreen: ['<div style="padding-left:20px;padding-right:20px;" class="homescreen">',
			'<h2>Ayuda de CR<b>AA</b>CK',
			'</h2>',
			'<p>',
			'Bienvenido a la comunidad de amantes del deporte y bienestar. <br>',
			'Porque creemos en nosotros, creemos en ti. </p>',
			'<p>',
			'Nuestra meta es contactarte con la persona que liberará tu máximo potencial. <br>',
			'Te damos la oportunidad de lograr tus objetivos, de sentirte orgulloso de tu esfuerzo, de ser feliz.',
			'</p>',
			'<p>',
			'Hoy estamos comenzando al igual que tú. Esta tarea no es fácil, tú lo sabes. <br>',
			'Apóyanos, coméntanos, estamos para escucharte y aprender de ti.',
			'</p>',
			'<p>',
			'Únete a la libertad de poder elegir, de estar informados y de vivir una vida sana.<br>',
			'Únete a la comunidad de CRAACK',
			'</p>',
			'<br>',
			'<br>',
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


	return SignupView;
});