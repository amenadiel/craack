define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var LandingView = Backbone.View.extend({

		el: '#maincontainer',

		homelogo: [
			'<div class="homelogo" >',
			'<h1>ENCUENTRA A TU MEJOR ENTRENADOR',
			'<small>Libera tu máximo potencial</small>',
			'</h1>',
			'<div class="search_landing ">',
			'<div class="row">',
			'<div class="col-sm-1 col-xs-1"></div>',
			'<input type="text" class="landing col-sm-4 col-xs-4" placeholder="Comuna donde quieres entrenar">',
			'<input type="text" class="landing  col-sm-4 col-xs-4" placeholder="Deporte que quieres practicar">',
			'<button class="button btn-craack col-sm-2 col-xs-2">',
			'Buscar',
			'</button>',
			'</div>',
			'</div>',
			'</div>'
		].join(''),

		homescreen: ['<div class=" media homescreen">',
			'<h2>¡CONVIERTE EN UN CR<b>AA</b>CK, HOY!<br/>',
			'<small>Un CRAACK es aquella persona con cualidades excepcionales en un campo determinado</small>',
			'</h2>',
			'<table class="table table-bordered" id="imgs">',
			'<tr>',
			'<td colspan="2"><div class="v1-11"></div></td>',
			'<td><div class="v1-13"></div></td>',
			'</tr>',
			'<tr>',
			'<td><div class="v1-15"></div></td>',
			'<td><div class="v1-17"></div></td>',
			'<td><div class="v1-14"></div></td>',
			'</tr>',
			'<tr>',
			'<td><div class="v1-16"></div></td>',
			'<td colspan="2"><div class="v1-12"></div></td>',
			'</tr>',
			'</table>',
			'<h2>Un CR<b>AA</b>CK, no nace,<br/>',
			'Un CR<b>AA</b>CK se hace.',
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
			'<button type="button" ng-model="practicar.buscar"  data-toggle="modal" data-target="#signupuser" class="btn btn-craack ">COMENZAR AHORA</button>',
			'<div class="blue_landing ">',
			'<a href="#" class="btn-left"><i class="fa fa-chevron-left"></i></a>',
			'<h2>ENTRENA CON LOS MEJORES</h2>',
			'<h3>TENEMOS A LOS MEJORES PROFESORES, EN TODAS LAS DISCIPLINAS, CERTIFICADOS PARA TI</h3>',
			'<div class="cellphone"></div>',
			'<a href="#" class="btn-right"><i class="fa fa-chevron-right"></i></a>',
			'</div>',
			'<br>',
			'<br>',
			'<h2>QUIERES SER ENTRENADOR?</h2>',
			'<p>',
			'Te ayudamos a...',
			'</p>',
			'<br>',
			'<div class="row bottom_landing">',
			'<div class="col-sm-1 col-xs-1"></div>',
			'<div class="ticket col-sm-5 col-xs-5">',
			'Incrementar tú número de alumnos',
			'</div>',
			'<div class="ticket  col-sm-6 col-xs-6">',
			'Recordarle a tus alumnos la hora de entrenamiento',
			'</div>',
			'</div>',
			'<div class="row bottom_landing">',
			'<div class="col-sm-1 col-xs-1"></div>',
			'<div class="ticket  col-sm-5 col-xs-5">',
			'Organizar tu agenda',
			'</div>',
			'<div class="ticket  col-sm-6 col-xs-6">',
			'Mantener tus finanzas ordenadas',
			'</div>',
			'</div>',
			'<br>',
			'<br>',
			'<br>',
			'<br>',
			'<button type="button"  class="btn btn-craack " data-toggle="modal" data-target="#logintrainer">INGRESAR COMO ENTRENADOR</button>',
			'<br>',
			'<br>',
			'<p>Tú solo entrénalos…. Nosotros hacemos el resto.</p>',
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
			jQuery(this.el).append(this.homelogo);
			jQuery(this.el).append(this.homescreen);
		}



	});


	return LandingView;
});