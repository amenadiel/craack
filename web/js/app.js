requirejs.config({

	waitSeconds: 18,
	baseUrl: '/js/lib',
	//except, if the module ID starts with "app",
	//load it from the js/app directory. paths
	//config is relative to the baseUrl, and
	//never includes a ".js" extension since
	//the paths config could be for a directory.
	paths: {
		app: '../app',
		visualizations: '../visualizations',
		models: '../app/models',
		views: '../app/views',
		collections: '../app/collections',
		viewmodels: '../app/viewmodels',
		plugins: '../plugins',
		'underscore': '/js/lib/underscore-min',
		'backbone': '/js/lib/backbone-min',
	}
});

if (typeof jQuery === 'function') {
	//jQuery already loaded, just use that
	define('jquery', function () {
		return jQuery;
	});
}

require(['jquery',
	'underscore',
	'bootstrap.min',
	'backbone',
	'jasny-bootstrap.min'
], function (jQuery, _) {
	console.log('estamos');


	jQuery(document).ready(function () {

		console.log('Starting the craack');

	});
});