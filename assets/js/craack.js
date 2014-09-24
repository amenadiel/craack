requirejs.config({

	waitSeconds: 18,
	baseUrl: '/js/lib',
	//except, if the module ID starts with "app",
	//load it from the js/app directory. paths
	//config is relative to the baseUrl, and
	//never includes a ".js" extension since
	//the paths config could be for a directory.
	shim: {
		'facebook': {
			exports: 'FB'
		}
	},
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
		'facebook': '//connect.facebook.net/en_US/all'
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
	'views/navmenu',
	'views/navbar',
	'views/invitar_amigos',
	'views/search',
	'views/footer',

	'bootstrap.min',
	'select2.min',
	'jasny-bootstrap.min',
	//'app/facebook_auth'
], function (jQuery,
	_,
	Backbone,
	LandingView,
	HelpView,
	navmenuView,
	navbarView,
	InvitarView,
	SearchView,
	footerView
) {


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
			var navmenuview = new navmenuView();
			var navbarview = new navbarView();

			var footerview = new footerView();


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

		jQuery(document).on('click', '.open_loginuser', function () {
			jQuery('.navmenu').offcanvas('hide');
			require(['views/loginuser'], function (LoginUserView) {
				var logintuserModal = new LoginUserView(function () {
					jQuery('#loginuser').modal('show');
				});
			});
		});

		jQuery(document).on('click', '.open_signupuser', function () {
			jQuery('.navmenu').offcanvas('hide');
			require(['views/signupuser'], function (SignupUserView) {
				var signupuserModal = new SignupUserView(function () {
					jQuery('#signupuser').modal('show');
				});
			});
		});

		jQuery(document).on('click', '.open_signuptrainer', function () {
			jQuery('.navmenu').offcanvas('hide');

			require(['views/signuptrainer'], function (SignupTrainerView) {
				var signuptrainerModal = new SignupTrainerView(function () {
					jQuery('#signupuser').modal('show');
				});
			});
		});

		jQuery(document).on('click', '.open_logintrainer', function () {
			jQuery('.navmenu').offcanvas('hide');
			require(['views/logintrainer'], function (LoginTrainerView) {
				var logintrainerModal = new LoginTrainerView(function () {
					jQuery('#signupuser').modal('show');
				});
			})

		});

		console.log('Starting the craack');
		Backbone.history.start({
			//pushState: true,
			//root: '/'
		});


	});
});