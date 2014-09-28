require(['jquery', 'facebook'], function (jQuery, FB) {

	FB.init({
		appId: '763439747063412',
		cookie: true, // enable cookies to allow the server to access the session
		xfbml: true, // parse social plugins on this page
		version: 'v2.1' // use version 2.1
	});

	// Now that we've initialized the JavaScript SDK, we call 
	// FB.getLoginStatus().  This function gets the state of the
	// person visiting this page and can return one of three states to
	// the callback you provide.  They can be:
	//
	// 1. Logged into your app ('connected')
	// 2. Logged into Facebook, but not your app ('not_authorized')
	// 3. Not logged into Facebook and can't tell if they are logged into
	//    your app or not.
	//
	// These three cases are handled in the callback function.

	FB.getLoginStatus(function (response) {
		//console.log(response);
		//console.log('accessToken is', response.authResponse.accessToken);
		statusChangeCallback(response);
	});


	// This is called with the results from from FB.getLoginStatus().
	window.statusChangeCallback = function (response) {
		console.log('statusChangeCallback', response);
		// The response object is returned with a status field that lets the
		// app know the current login status of the person.
		// Full docs on the response object can be found in the documentation
		// for FB.getLoginStatus().
		jQuery('#navbar .fb-login-button').appendTo('#status');
		enciendeapaga(response);
	};

	// This function is called when someone finishes with the Login
	// Button.  See the onlogin handler attached to it in the sample
	// code below.
	window.checkLoginState = function () {
		FB.getLoginStatus(function (response) {
			statusChangeCallback(response);
		});
	};

	enciendeapaga = function (response, contenedor) {
		contenedor = contenedor || '.craack';
		console.log('enciendeapaga', contenedor);

		if (response.status == 'connected' && sessionStorage.getItem("connected") == "true") {
			// Logged into your app and Facebook.
			//testAPI();
			jQuery('.loggedout', contenedor).hide();
			jQuery('.loggedin', contenedor).show();

		} else {
			console.log('status is ', response.status, ' sessionstorage is ', sessionStorage.getItem("connected"));
			jQuery('.loggedout', contenedor).show();
			jQuery('.loggedin', contenedor).hide();
		}
	};


	filldata = function (response, container) {
		container = container || '.craack'
		if (response.status === 'connected') {
			FB.api('/me', function (mydata) {
				console.log(mydata);

				jQuery('.inputemail', container).val(mydata.email);
				jQuery('.inputname', container).val(mydata.first_name + ' ' + mydata.last_name);

			});
			FB.api("/me/picture", {
					"redirect": false,
					"height": "200",
					"type": "normal",
					"width": "200"
				},
				function (response) {
					if (response && !response.error) {
						console.log('picture', response);
						var avatarurl = response.data.url.split('?')[0];
						jQuery('.avatar').attr('src', response.data.url);
						//jQuery('#status').prepend('<img src="//graph.facebook.com/' + response.id + '/picture" style="float:left;margin-right:20px;width:40px;height:40px;margin-top:-7px;" class="img-circle" />');
					}
				});
		} else {
			jQuery('.avatar', '#loginuser').attr('src', '/assets/images/no-avatar-male.png');
		}
	};





	// Here we run a very simple test of the Graph API after login is
	// successful.  See statusChangeCallback() for when this call is made.
	window.testAPI = function () {
		console.log('Welcome!  Fetching your information.... ');
		FB.api('/me', function (response) {
			console.log('Successful login', response);
			jQuery('#status button').hide();
			jQuery('#status').prepend('<img src="//graph.facebook.com/' + response.id + '/picture" style="float:left;margin-right:20px;width:40px;height:40px;margin-top:-7px;" class="img-circle" />');
			jQuery('#navbar .fb-login-button').appendTo('#status').show();
		});
	};
	jQuery(document).ready(function () {
		jQuery(document).on('click', '.logout', function () {
			sessionStorage.setItem("connected", false);
			jQuery('.loggedout').show();
			jQuery('.loggedin').hide();

			jQuery('.avatar', '#loginuser').attr('src', '/assets/images/no-avatar-male.png');
		});
	});
	jQuery(document).ready(function () {
		jQuery(document).on('click', '.login', function () {
			var container = jQuery(this).closest('.modal').attr('id');
			FB.login(function (response) {
				if (response.status == 'connected') sessionStorage.setItem("connected", true);
				console.log('Login responde', response);
				_.delay(function () {
					enciendeapaga(response);
					filldata(response);
				}, 500);

			}, {
				scope: 'user_friends'
			});

			//jQuery('.loggedout').show();
			//jQuery('.loggedin').hide();
		});
	});

});