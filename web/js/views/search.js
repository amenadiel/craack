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
			'<div class="tab-pane active" id="home">Buscar por deporte',

			'<input id="deportes" type="text">',
			'<button class="btn btn-craack">Buscar</button>'


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
				ajax: {
					url: URL,
					dataType: 'json',
					type: "GET",
					quietMillis: 50,
					data: function (term) {
						return {
							term: term
						};
					},
					results: function (data) {
						return {
							results: $.map(data, function (item) {
								return {
									text: item.completeName,
									slug: item.slug,
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