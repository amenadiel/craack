// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.controllers' is found in controllers.js
var app = angular.module('starter', ['ionic', 'starter.controllers']);

app.run(function ($ionicPlatform) {
	$ionicPlatform.ready(function () {
		// Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
		// for form inputs)
		if (window.cordova && window.cordova.plugins.Keyboard) {
			cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
		}
		if (window.StatusBar) {
			// org.apache.cordova.statusbar required
			StatusBar.styleDefault();
		}
	});
});

app.config(function ($stateProvider, $urlRouterProvider) {
	$stateProvider

	.state('app', {
		url: "/app",
		abstract: true,
		templateUrl: "templates/menu.html",
		controller: 'AppCtrl'
	})


	.state('app.landing', {
		url: "/landing",
		views: {
			'menuContent': {
				templateUrl: "templates/landing.html",
				controller: 'MainController'
			}
		}
	})


	.state('app.search', {
		url: "/search",
		views: {
			'menuContent': {
				templateUrl: "templates/search.html"
			}
		}
	})

	.state('app.browse', {
		url: "/browse",
		views: {
			'menuContent': {
				templateUrl: "templates/browse.html"
			}
		}
	})
		.state('app.playlists', {
			url: "/playlists",
			views: {
				'menuContent': {
					templateUrl: "templates/playlists.html",
					controller: 'PlaylistsCtrl'
				}
			}
		})

	.state('app.single', {
		url: "/playlists/:playlistId",
		views: {
			'menuContent': {
				templateUrl: "templates/playlist.html",
				controller: 'PlaylistCtrl'
			}
		}
	});
	// if none of the above states are matched, use this as the fallback
	$urlRouterProvider.otherwise('/app/landing');
});


app.service('analytics', [
	'$rootScope', '$window', '$location',
	function ($rootScope, $window, $location) {
		var send = function (evt, data) {
			ga('send', evt, data);
		}
	}
]);

app.directive("carouselExampleItem", function ($rootScope, $swipe) {
	return function (scope, element, attrs) {
		var startX = null;
		var startY = null;
		var endAction = "cancel";
		var carouselId = element.parent().parent().attr("id");

		var translateAndRotate = function (x, y, z, deg) {
			element[0].style["-webkit-transform"] = "translate3d(" + x + "px," + y + "px," + z + "px) rotate(" + deg + "deg)";
			element[0].style["-moz-transform"] = "translate3d(" + x + "px," + y + "px," + z + "px) rotate(" + deg + "deg)";
			element[0].style["-ms-transform"] = "translate3d(" + x + "px," + y + "px," + z + "px) rotate(" + deg + "deg)";
			element[0].style["-o-transform"] = "translate3d(" + x + "px," + y + "px," + z + "px) rotate(" + deg + "deg)";
			element[0].style["transform"] = "translate3d(" + x + "px," + y + "px," + z + "px) rotate(" + deg + "deg)";
		}

		$swipe.bind(element, {
			start: function (coords)  {
				endAction = null;
				startX = coords.x;
				startY = coords.y;
			},

			cancel: function (e)  {
				endAction = null;
				translateAndRotate(0, 0, 0, 0);
				e.stopPropagation();
			},

			end: function (coords, e)  {
				if (endAction == "prev") {
					$rootScope.carouselPrev(carouselId);
				} else if (endAction == "next") {
					$rootScope.carouselNext(carouselId);
				}
				translateAndRotate(0, 0, 0, 0);
				e.stopPropagation();
			},

			move: function (coords)  {
				if (startX != null) {
					var deltaX = coords.x - startX;
					var deltaXRatio = deltaX / element[0].clientWidth;
					if (deltaXRatio > 0.3) {
						endAction = "next";
					} else if (deltaXRatio < -0.3) {
						endAction = "prev";
					} else {
						endAction = null;
					}
					translateAndRotate(deltaXRatio * 200, 0, 0, deltaXRatio * 15);
				}
			}
		});
	}
});

app.controller('MainController', function ($rootScope, $scope, analytics) {

	$rootScope.$on("$routeChangeStart", function () {
		$rootScope.loading = true;
	});

	$rootScope.$on("$routeChangeSuccess", function () {
		$rootScope.loading = false;
	});

	var scrollItems = [];

	for (var i = 1; i <= 30; i++) {
		scrollItems.push("Item " + i);
	}

	$scope.scrollItems = scrollItems;
	$scope.invoice = {
		payed: true
	};

	$scope.userAgent = navigator.userAgent;
	$scope.chatUsers = [{
		name: "Carlos  Flowers",
		online: true
	}, {
		name: "Byron Taylor",
		online: true
	}, {
		name: "Jana  Terry",
		online: true
	}, {
		name: "Darryl  Stone",
		online: true
	}, {
		name: "Fannie  Carlson",
		online: true
	}, {
		name: "Holly Nguyen",
		online: true
	}, {
		name: "Bill  Chavez",
		online: true
	}, {
		name: "Veronica  Maxwell",
		online: true
	}, {
		name: "Jessica Webster",
		online: true
	}, {
		name: "Jackie  Barton",
		online: true
	}, {
		name: "Crystal Drake",
		online: false
	}, {
		name: "Milton  Dean",
		online: false
	}, {
		name: "Joann Johnston",
		online: false
	}, {
		name: "Cora  Vaughn",
		online: false
	}, {
		name: "Nina  Briggs",
		online: false
	}, {
		name: "Casey Turner",
		online: false
	}, {
		name: "Jimmie  Wilson",
		online: false
	}, {
		name: "Nathaniel Steele",
		online: false
	}, {
		name: "Aubrey  Cole",
		online: false
	}, {
		name: "Donnie  Summers",
		online: false
	}, {
		name: "Kate  Myers",
		online: false
	}, {
		name: "Priscilla Hawkins",
		online: false
	}, {
		name: "Joe Barker",
		online: false
	}, {
		name: "Lee Norman",
		online: false
	}, {
		name: "Ebony Rice",
		online: false
	}];

});