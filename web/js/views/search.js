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
			'<input id="deportes" style="width:453px" type="hidden">',
			'<button class="btn btn-craack">Buscar</button>',
			'</div>',

			'</div>',
			'<div class="tab-pane" id="profile">Buscar por comuna</div>',
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

			$("#deportes").select2({
				minimumInputLength: 2,
				tags: [],
				matcher: function (term, text, opt) {
					console.log(term, text);
					return text.toUpperCase().indexOf(term.toUpperCase()) >= 0;
				},
				ajax: {
					url: '/api/deportes',
					dataType: 'json',
					type: "GET",
					quietMillis: 50,

					results: function (data) {
						return {
							results: $.map(data, function (item) {
								return {
									text: item.nombre,
									slug: item.nombre,
									id: item.id
								}
							})
						};
					}
				}
			});
		}



	});


	return HelpView;
});