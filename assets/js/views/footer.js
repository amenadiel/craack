define([
	'jquery',
	'underscore',
	'backbone',
	// Using the Require.js text! plugin, we are loaded raw text
	// which will be used as our views primary template
	//'text!views/resources/Columns/list.html'
], function (jQuery, _, Backbone) {


	var footerView = Backbone.View.extend({

		el: '#footer',

		content: [
			'<div class="row">',
			'<div class="col-sm-3 col-xs-3 footer-left">',
			'<a href="http://craack.com/" class="img-circle"><i class="fa fa-instagram fa-navbar"></i></a>',
			'<a href="https://www.facebook.com/craack.wellness" class="img-circle"><i class="fa fa-facebook fa-navbar"></i></a>',
			'<a href="http://craack.com/" class="img-circle"><i class="fa fa-linkedin fa-navbar"></i></a>',
			'</div>',
			'<div class="col-sm-6 col-xs-6">',
			'<div id="footer-center">',
			'<h2>CR<b>AA</b>CK</h2>',
			'<p>powered by Sailing Branding SPA</p>',
			'<p>Copyright 2014, All rights reserved. 218 9th Street, 94103 San Francisco CA</p>',
			'</div>',
			'</div>',
			'<div class="footer-right col-sm-3 col-xs-3 ">',
			'<div  class="btn btn-navbar">PROFESOR</div>',
			'<button style="min-width:120px;margin:5px auto;display: block;" class="btn btn-transparent btn-border open_signuptrainer">SIGN UP</button>',
			'<button style="min-width:120px;margin:5px auto;display: block;" class="btn btn-transparent btn-border open_logintrainer">LOGIN</button>',
			'</div>',
			'</div>',
		].join(''),

		initialize: function () {

			jQuery(this.el).html(this.content);

		},

		render: function () {
			//jQuery(this).appendTo('#body');
		}


	});


	return footerView;
});