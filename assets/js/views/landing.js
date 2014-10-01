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

		backgrounds: ['homeclass1.jpg', 'homeclass2.jpg', 'homeclass3.jpg', 'homeclass4.jpg', 'homeclass5.jpg', 'homeclass6.jpg', 'homeclass7.jpg', 'homeclass8.jpg', 'homeclass9.jpg', 'homeclass10.jpg'],


		homelogo: [
			'<div class="homelogo" >',
			'<h1>APRENDE CON UN CRAACK',
			'<small>CONOCE A TU MEJOR PROFESOR, SÉ LO QUE SIEMPRE SOÑASTE</small>',
			'</h1>',
			'<div class="search_landing ">',
			'<div class="row">',
			'<div class="col-sm-2 col-xs-1"></div>',
			'<input type="text" class="landing col-sm-3 col-xs-4" placeholder="¿Qué te gustaría aprender?"/>',
			'<input type="text" class="landing  col-sm-3 col-xs-4" placeholder="¿En qué comuna?"/>',
			'<button class="button btn-craack col-sm-2 col-xs-2">Buscar</button>',
			'<div class="col-sm-2 col-xs-0"></div>',
			'</div>',
			'</div>',
			'</div>'
		].join(''),

		homescreen: [
			'<div style="text-align:center;height:auto;min-height:200vw;" id="homescreen" class=" media homescreen">',
			'</div>'
		].join(''),


		firstblock: ['<div style="margin:2%;">',
			'<h2>¡CONVIERTE EN UN CR<b>AA</b>CK, HOY!<br/>',
			//'<small>Un CRAACK es aquella persona con cualidades excepcionales en un campo determinado</small>',
			'</h2>',
			'<table class="table table-bordered" id="imgs" style="padding:2%;">',
			'<tr>',
			'<td colspan="2"><div class="v1-11">Arte</div></td>',
			'<td><div class="v1-13">Maratón</div></td>',
			'</tr>',
			'<tr>',
			'<td width="33%"><div class="v1-15">Jardinería</div></td>',
			'<td width="33%"><div class="v1-17" >Cocina</div></td>',
			'<td width="33%"><div class="v1-14">Ballet</div></td>',
			'</tr>',
			'<tr>',
			'<td><div class="v1-16">Piano</div></td>',
			'<td colspan="2"><div class="v1-12">Bicicleta</div></td>',
			'</tr>',
			'</table>',
			'</div>'
		].join(''),






		secondblock: ['<div class="row secondblock" style="margin:2%;">',
			'<div class="col-sm-5" style="text-align:center;border-right:2px solid">',
			'<h3>Aprende con un</h3>',
			'<h2>CRAACK</h2>',
			'<h2><small>y serás un</small><h2>',
			'<h2>CRAACK</h2>',
			'</div>',
			'<div class="col-sm-7" style="text-align:left;">',
			'<p>Un CRAACK es aquella persona con cualidades excepcionales en un campo determinado. </p>',
			'<p>Nuestra meta es conectarte con la persona perfecta para que aprendas aquella disciplina en la que siempre quisiste ser bueno. </p>',
			'<p>Conquista tus metas, con los mejores profesores, cerca de tu ubicación y con un gran equipo… tus Amigos.</p>',
			'<p>Únete a la libertad de poder elegir, de estar informado, de lograr tus objtivos y de vivir aprendiendo.</p>',
			'<p>Únete a la comunidad de CRAACK.</p>',
			'<br>',
			'</div>',
			'<div class="col-sm-12" style="margin-top:30px;text-align:center;"><button type="button" ng-model="practicar.buscar"  data-toggle="modal" data-target="#signupuser" class="btn btn-craack ">COMENZAR AHORA</button></div>',

			'</div>'
		].join(''),

		bluelanding: ['<div class="blue_landing ">',
			'<a href="#" class="btn-left"><i class="fa fa-chevron-left"></i></a>',
			'<h2>ENTRENA CON LOS MEJORES</h2>',
			'<h3>TENEMOS A LOS MEJORES PROFESORES, EN TODAS LAS DISCIPLINAS, CERTIFICADOS PARA TI</h3>',
			'<div class="cellphone"></div>',
			'<a href="#" class="btn-right"><i class="fa fa-chevron-right"></i></a>',
			'</div>',
			'<br>'
		].join(''),

		lastblock: ['<div style="margin:2%;min-height: 500px;">',
			'<h2>QUIERES SER PROFESOR EN CRAACK?</h2>',
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

			'<button type="button"  class="btn btn-craack " data-toggle="modal" data-target="#logintrainer">INGRESAR COMO PROFESOR</button>',
			'<br>',
			'<br>',
			'<p>Tú solo demuestra que eres un CRAACK <br> …Nosotros hacemos el resto.</p>',
			'<br>',
			'</div>',
			'<div style="height:100px;">&nbsp;</div>'

		].join(''),

		initialize: function () {
			this.el = this.el || '#maincontainer';
			console.log('initializing landing');
			jQuery('#maincontainer').html(this.homelogo);
			jQuery(this.el).append(this.homescreen);

		},

		render: function () {
			var bgindex = Math.floor(Math.random() * this.backgrounds.length);

			var homelogoimg = 'url(/assets/images/' + this.backgrounds[bgindex] + ')';
			console.log('rendering landing', this.backgrounds, bgindex, this.backgrounds[bgindex], homelogoimg);
			jQuery('.homelogo').css('background-image', homelogoimg);
			jQuery('#homescreen').append(this.firstblock);

			jQuery('#homescreen').append(this.secondblock);
			jQuery('#homescreen').append(this.bluelanding);
			jQuery('#homescreen').append(this.lastblock);
		}



	});


	return LandingView;
});