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


		homescreen: ['<div class="homescreen margintop">',
			'<h2>&nbsp; Búsqueda de CR<b>AA</b>CK',
			'</h2>',
			'<!-- Nav tabs -->',
			'<ul class="nav nav-tabs" role="tablist">',
			'<li class="active"><a href="#home" role="tab" data-toggle="tab">Buscar por deporte</a></li>',
			'<li><a href="#profile" role="tab" data-toggle="tab">Buscar por comuna</a></li>',
			'<li><a href="#messages" role="tab" data-toggle="tab">Buscar por amigos</a></li>',
			'</ul>',

			'<!-- Tab panes -->',
			'<div style="padding:0 20px; " class="tab-content">',
			'<div class="tab-pane active" id="home">Buscar por deporte<br>',
			'<div class="row selectdeporte">',
			'<div class="col-sm-1 col-xs-1"></div>',
			'<select multiple id="deportes" style="width:453px;" class="invisible" ></select>',
			'<button class="btn btn-craack">Buscar</button>',
			'</div>',

			'</div>',
			'<div class="tab-pane" id="profile">Buscar por comuna<br>',

			'<div class="row selectcomuna">',
			'<div class="col-sm-1 col-xs-1"></div>',
			'<select multiple id="comunas" style="width:453px" class="invisible" ></select>',
			'<button class="btn btn-craack">Buscar</button>',
			'</div>',

			'</div>',

			'<div class="tab-pane" id="messages">Buscar por amigos</div>',
			'</div>',
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

			jQuery.ajax({
				url: '/api/deportes',
				type: 'GET',
				dataType: 'json'
			}).done(function (data) {
				data.forEach(function (element) {
					jQuery('#deportes').append('<option id="' + element.id + '">' + element.nombre + '</option>');
				});

				$("#deportes").removeClass('invisible').select2({
					minimumInputLength: 3,
				});


			});

			jQuery.ajax({
				url: '/api/comunas',
				type: 'GET',
				dataType: 'json'
			}).done(function (data) {
				data.forEach(function (element) {
					jQuery('#comunas').append('<option id="' + element.id + '">' + element.nombre + '</option>');
				});

				$("#comunas").removeClass('invisible').select2({
					minimumInputLength: 3,
				});


			});

		}



	});


	return HelpView;
});