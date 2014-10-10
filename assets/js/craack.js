(function (i, s, o, g, r, a, m) {
	i['GoogleAnalyticsObject'] = r;
	i[r] = i[r] || function () {
		(i[r].q = i[r].q || []).push(arguments)
	}, i[r].l = 1 * new Date();
	a = s.createElement(o),
	m = s.getElementsByTagName(o)[0];
	a.async = 1;
	a.src = g;
	m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
ga('create', 'UA-55640244-1', 'auto');
ga('send', 'pageview');

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
			this.bind('route', this._pageView);
			var navmenuview = new navmenuView();
			var navbarview = new navbarView();

			var footerview = new footerView();


		},



		_pageView: function () {
			var path = Backbone.history.getFragment();
			console.log('Send pageview ', "/" + path);
			ga('send', 'pageview', {
				page: "/" + path
			});
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

		jQuery(document).on('click', '.open_signuptrainer, .open_logintrainer', function () {
			jQuery('.navmenu').offcanvas('hide');
			console.log('logintrainer');
			require(['views/logintrainer'], function (LoginTrainerView) {
				console.log('open_signuptrainer', LoginTrainerView);
				var logintrainerModal = new LoginTrainerView(function () {
					jQuery('#logintrainer').modal('show');
				});
			});
		});




		jQuery(document).on('click', '#buscarespecialidad', function () {
			var selectedoptions = [];
			if (jQuery('#especialidades option:selected').length === 0) {
				alert('Elija al menos un especialidad');
			} else if (jQuery('#especialidades option:selected').length === 1) {
				jQuery('#especialidades option:selected').each(function () {
					var sportid = 'filter[where][idEspecialidad]=' + jQuery(this).attr('id');
					selectedoptions.push(sportid);
				});
			} else {
				jQuery('#especialidades option:selected').each(function () {
					var sportid = 'filter[where][idEspecialidad][inq]=' + jQuery(this).attr('id');
					selectedoptions.push(sportid);
				});
			}

			jQuery.ajax({
				url: '/api/Clases?filter[include]=comuna&filter[include]=especialidad&filter[include]=profesor&' + selectedoptions.join('&'),
				type: 'GET',
				dataType: 'json'
			}).done(function (results) {
				jQuery('#especialidad .results').html('');
				results.forEach(function (clase) {
					parseClass(clase, '#especialidad .results');
				});
			});
		});


		jQuery(document).on('click', '#buscarcomuna', function () {
			var selectedoptions = [];
			if (jQuery('#comunas option:selected').length === 0) {
				alert('Elija al menos una comuna');
			} else if (jQuery('#comunas option:selected').length === 1) {
				jQuery('#comunas option:selected').each(function () {
					var comunaid = 'filter[where][idComuna]=' + jQuery(this).attr('id');
					selectedoptions.push(comunaid);
				});
			} else {
				jQuery('#especialidades option:selected').each(function () {
					var comunaid = 'filter[where][idComuna][inq]=' + jQuery(this).attr('id');
					selectedoptions.push(comunaid);
				});
			}

			jQuery.ajax({
				url: '/api/Clases?filter[include]=comuna&filter[include]=especialidad&filter[include]=profesor&' + selectedoptions.join('&'),
				type: 'GET',
				dataType: 'json'
			}).done(function (results) {
				jQuery('#comuna .results').html('');
				results.forEach(function (clase) {
					parseClass(clase, '#comuna .results');
				});
			});
		});


		var parseClass = function (clase, container) {
			console.log(clase, container);
			var lafechaR = clase.fecha.split("T");
			var lafecha = lafechaR[0];
			var lahora = lafechaR[1].split('.')[0];

			var mediaItem = jQuery('<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2"> </div>');
			var thumbnail = jQuery('<div class="thumbnail"></div>');
			thumbnail.append('<img src="' + clase.profesor.avatar + '" height="200" alt="...">');
			thumbnail.append('<div class="caption"><h3>' + clase.especialidad.nombre + '</h3><p>' + clase.nombre + '</p><p>' + clase.profesor.name + '</p><p>' + clase.lugar + ', ' + clase.comuna.nombre + '</p></div>');
			thumbnail.appendTo(mediaItem);
			//mediaItem.append('<a class="pull-left " href="#"><img src="' + clase.profesor.avatar + '" class="img-circle"></a>');
			//mediaItem.append('<div class="media-body"><small>' + lafecha + ' a las ' + lahora + 'hrs</small><h4 class="media-heading"><a href="#">' + clase.especialidad.nombre + '</a> / ' + clase.nombre + '</h4><b>' + clase.profesor.name + '</b><br> ' + clase.lugar + ' </div>');
			mediaItem.appendTo(container);
		};

		console.log('Starting the craack');
		Backbone.history.start({
			//pushState: true,
			//root: '/'
		});


	});
});