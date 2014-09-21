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
		models: '../models',
		views: '../views',
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
	'backbone',
	'views/landing',
	'views/help',
	'views/invitar_amigos',
	'views/search',
	'views/logintrainer',
	'views/loginuser',
	'views/signupuser',
	'views/signuptrainer',
	'bootstrap.min',
	'select2.min',
	'jasny-bootstrap.min'
], function (jQuery,
	_,
	Backbone,
	LandingView,
	HelpView,
	InvitarView,
	SearchView,
	LoginTrainerView,
	LoginUserView,
	SignupUserView,
	SignupTrainerView) {
	console.log('estamos', LoginTrainerView);


	var AppRouter = Backbone.Router.extend({
		routes: {
			"": "home",
			"busqueda": "search",
			"help": "help",
			":hash": "home",
			"search/:hash": "search",
			"login/:hash": "login",
			"register/:hash": "register",
			"calendar/:hash": "calendar",



		},
		initialize: function () {
			console.log('initializing router', LoginTrainerView);
			var logintrainerModal = new LoginTrainerView();
			var logintuserModal = new LoginUserView();
			var signupuserModal = new SignupUserView();
			var signuptrainerModal = new SignupTrainerView();
		},
		home: function (hash) {
			console.log('home', hash);
			var landing = new LandingView();
			landing.render();
		},
		search: function (hash) {
			console.log('search');
			var search = new SearchView();
			search.render();
		},
		login: function (hash) {
			console.log('login');
		},
		register: function (hash) {
			console.log('register');
		},
		calendar: function (hash) {
			console.log('calendar');
		},
		help: function (hash) {
			console.log('help');
			var help = new HelpView();
			help.render();
		},

	});
	var appRouter = new AppRouter();


	jQuery(document).ready(function () {

		console.log('Starting the craack');
		Backbone.history.start({
			//pushState: true,
			//root: '/'
		});

	});
});