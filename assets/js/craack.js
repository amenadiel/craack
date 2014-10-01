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
	'views/ayuda',
	'views/navmenu',
	'views/navbar',
	'views/invitar_amigos',
	'views/search',
	'views/signup',
	'views/perfil',
	'views/footer',

	'bootstrap.min',
	'select2.min',
	'jasny-bootstrap.min',
	'app/facebook_auth'
], function (jQuery,
	_,
	Backbone,
	LandingView,
	HelpView,
	navmenuView,
	navbarView,
	InvitarView,
	SearchView,
	SignupView,
	ProfileView,
	footerView
) {


	var AppRouter = Backbone.Router.extend({
		routes: {
			"": "home",
			"busqueda": "search",
			"help": "help",
			"perfil": "perfil",
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

		perfil: function () {
			var perfil = new ProfileView();
			perfil.render();
		},
		signup: function () {
			var signup = new SignupView();
			signup.render();
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

		jQuery('.homelogo').css('background-image', 'url(/assets/images/homeclass1.jpg)');

		jQuery(document).on('click', '.open_loginuser, .open_signupuser', function () {
			jQuery('.navmenu').offcanvas('hide');
			require(['views/loginuser'], function (LoginUserView) {
				var logintuserModal = new LoginUserView(function () {
					jQuery('#loginuser').modal('show');
					FB.getLoginStatus(function (response) {
						if (sessionStorage.getItem("connected") === true) {
							enciendeapaga(response, '#loginuser');
							filldata(response);
						}

					});
				});
			});
		});

		/*jQuery(document).on('click', '.open_signupuser', function () {
			jQuery('.navmenu').offcanvas('hide');
			require(['views/signupuser'], function (SignupUserView) {
				var signupuserModal = new SignupUserView(function () {
					jQuery('#signupuser').modal('show');
				});
			});
		});*/

		jQuery(document).on('click', '.open_signuptrainer, .open_logintrainer', function () {
			jQuery('.navmenu').offcanvas('hide');
			console.log('open_signuptrainer');
			require(['views/signuptrainer'], function (SignupTrainerView) {
				console.log('open_signuptrainer', SignupTrainerView);
				var signuptrainerModal = new SignupTrainerView(function () {
					jQuery('#signuptrainer').modal('show');
				});
			});
		});

		/*jQuery(document).on('click', '.open_logintrainer', function () {
			console.log('open_logintrainer');
			jQuery('.navmenu').offcanvas('hide');
			require(['views/logintrainer'], function (LoginTrainerView) {
				console.log('LoginTrainerView', LoginTrainerView);
				var logintrainerModal = new LoginTrainerView(function () {
					jQuery('#logintrainer').modal('show');
				});
			});
		});*/




		jQuery(document).on('click', '#buscardeporte', function () {
			var selectedoptions = [];
			if (jQuery('#deportes option:selected').length === 0) {
				alert('Elija al menos un deporte');
			} else if (jQuery('#deportes option:selected').length === 1) {
				jQuery('#deportes option:selected').each(function () {
					var sportid = 'filter[where][idDeporte]=' + jQuery(this).attr('id');
					selectedoptions.push(sportid);
				});
			} else {
				jQuery('#deportes option:selected').each(function () {
					var sportid = 'filter[where][idDeporte][inq]=' + jQuery(this).attr('id');
					selectedoptions.push(sportid);
				});
			}


			jQuery.ajax({
				url: '/api/Clases?filter[include]=comuna&filter[include]=deporte&filter[include]=entrenador&' + selectedoptions.join('&'),
				type: 'GET',
				dataType: 'json'
			}).done(function (results) {
				jQuery('#results').html('');
				results.forEach(function (clase) {
					console.log(clase);
					var lafecha = clase.fecha.split(/T\./ig);

					var mediaItem = jQuery('<div class="media"></div>');
					mediaItem.append('<a class="pull-left " href="#"><img src="' + clase.entrenador.avatar + '" class="img-circle"></a>');
					mediaItem.append('<div class="media-body"><small>' + lafecha[0] + ' ' + lafecha[1] + 'hrs</small><h4 class="media-heading"><a href="#">' + clase.deporte.nombre + '</a> / ' + clase.nombre + '</h4><b>' + clase.entrenador.nombre + '</b><br> ' + clase.establecimiento.direccion + ' </div>');
					mediaItem.appendTo('#results');
				});
			});
		});

		console.log('Starting the craack');
		Backbone.history.start({
			//pushState: true,
			//root: '/'
		});


	});
});