// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array or 'requires'
// 'starter.controllers' is found in controllers.js
var app = angular.module('starter', ['ionic', 'starter.controllers', 'starter.services', 'ngRoute', 'ngAnimate', 'lbServices']);


app.config(function ($compileProvider) {
  // Needed for routing to work
  $compileProvider.aHrefSanitizationWhitelist(/^\s*(https?|ftp|mailto|file|tel):/);
});



app.config(function ($routeProvider, $locationProvider, $httpProvider) {
  //console.log($stateProvider, $urlRouterProvider);$stateProvider, $urlRouterProvider,
  // Set up the initial routes that our app will respond to.
  // These are then tied up to our nav router which animates and
  // updates a navigation bar
  $routeProvider.when('/home', {
    templateUrl: 'templates/app.html',
    controller: 'AppCtrl'
  });

  // if the url matches something like /pet/2 then this route
  // will fire off the PetCtrl controller (controllers.js)
  $routeProvider.when('/register', {
    templateUrl: 'templates/register.html',
    controller: 'RegisterCtrl'
  });

  $routeProvider.when('/login', {
    templateUrl: 'templates/login.html',
    controller: 'LoginCtrl'
  });

  // if none of the above routes are met, use this fallback
  // which executes the 'AppCtrl' controller (controllers.js)
  $routeProvider.otherwise({
    redirectTo: '/home'
  });

  // Intercept 401 responses and redirect to login screen
  $httpProvider.interceptors.push(function ($q, $location, AppAuth) {
    return {
      responseError: function (rejection) {
        console.log('intercepted rejection of ', rejection.config.url, rejection.status);
        if (rejection.status == 401) {
          AppAuth.currentUser = null;
          // save the current location so that login can redirect back
          $location.nextAfterLogin = $location.path();
          $location.path('/login');
        }
        return $q.reject(rejection);
      }
    };
  });
});

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

app.run(function ($rootScope, $location, AppAuth) {
  $rootScope.$on("$routeChangeStart", function (event, next, current) {
    console.log('AppAuth.currentUser', AppAuth.currentUser);
    console.log('$location.path()', $location.path());
  });
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