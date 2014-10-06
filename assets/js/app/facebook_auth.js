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


	filldata = function (response, container, callback) {
		container = container || '.craack';
		if (response.status === 'connected') {
			FB.api('/me', function (mydata) {
				if (container == '#loginuser') {
					jQuery('.actualizate', container).html('Asegúrate de que la dirección de correo y el número de celular sean correctos, pues son el medio con que CRAACK te mantiene informado de las clases que has agendado');
				} else {
					jQuery('.actualizate', container).html('Asegúrate de que la dirección de correo y el número de celular sean correctos, pues son el medio con que tus alumnos te contactarán para sumarse a tus clases');
				}
				jQuery('.inputemail', container).val(mydata.email);
				jQuery('.userid', container).val(mydata.id);
				jQuery('.inputname', container).val(mydata.first_name + ' ' + mydata.last_name);


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
							mydata.avatar = avatarurl;
							if (callback) callback(mydata);
							jQuery('.avatar').attr('src', response.data.url);
						}
					});

			});
		} else {
			jQuery('.avatar', '#loginuser').attr('src', '/assets/images/no-avatar-male.png');
			if (callback) callback();
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

		jQuery(document).on('click', '.updatedata', function () {
			var container = '#' + jQuery(this).closest('.modal').attr('id');
			if (container === '#loginuser' || container === '#signupuser') {
				var userdata = {
					id: jQuery('.userid', container).val(),
					email: jQuery('.inputemail', container).val(),
					name: jQuery('.inputname', container).val(),
					celular: jQuery('.inputcelular', container).val()
				};
				jQuery.ajax({
					url: '/api/Usuarios',
					type: 'PUT',
					dataType: 'json',
					data: userdata

				}).done(function (respuesta) {
					console.log('Se han actualizado los datos ', respuesta);
				});

			} else {
				console.log('Updating entrenador');
			}
		});

		jQuery(document).on('click', '.logout', function () {
			sessionStorage.setItem("connected", false);
			jQuery('.loggedout').show();
			jQuery('.loggedin').hide();

			jQuery('.avatar', '#loginuser').attr('src', '/assets/images/no-avatar-male.png');
		});

		jQuery(document).on('focus blur', '.inputcelular', function () {
			var estenumero = jQuery(this).val();
			var lematch = estenumero.match(/(.*)(\d{8})$/);
			try {
				console.log(lematch[2]);
				if (estenumero.indexOf('+569 ') === -1) {
					jQuery(this).val('+569 ' + lematch[2]);
					jQuery(this).closest('.form-group').removeClass('has-error').addClass('has-success');
				}


			} catch (e) {
				console.log(e);
			}


		});

		jQuery(document).on('keyup', '.inputcelular', function () {
			var estenumero = jQuery(this).val();
			//console.log(jQuery(this).val(), jQuery(this).val().length);

			if (estenumero.length == 13 || estenumero.length == 8) {
				jQuery(this).closest('.form-group').removeClass('has-error').addClass('has-success');
			} else {
				jQuery(this).closest('.form-group').removeClass('has-success').addClass('has-error');
			}
		});

		jQuery(document).on('click', '.login', function () {

			var container = '#' + jQuery(this).closest('.modal').attr('id');
			FB.login(function (response) {
				if (response.status == 'connected') sessionStorage.setItem("connected", true);
				console.log('Login responde', response);
				_.delay(function () {
					enciendeapaga(response);
					filldata(response, container, function (mydata) {
						console.log('MyData es', mydata);
						if (container === '#loginuser' || container === '#signupuser') {
							jQuery.ajax({
								url: '/api/Usuarios/' + mydata.id + '/exists'
							}).done(function (response) {
								if (response.exists === true) {
									jQuery.ajax({
										url: '/api/Usuarios/' + mydata.id,
										dataType: 'json'
									}).done(function (userdata) {
										console.log('El usuario ya registrado es ', userdata);
										jQuery('.inputname', container).val(userdata.name).closest('.form-group').addClass('has-success');
										jQuery('.inputemail', container).val(userdata.email).closest('.form-group').addClass('has-success');
										jQuery('.inputcelular', container).val(userdata.celular);
										if (jQuery('.inputcelular', container).val().length < 9) {
											jQuery('.inputcelular', container).closest('.form-group').addClass('has-error');
										} else {
											jQuery('.inputcelular', container).closest('.form-group').addClass('has-success');
										}
									});
								}
							}).fail(function (jqXHR, textStatus, errorThrown) {
								var respuesta = JSON.parse(jqXHR.responseText);
								console.log('ERROR', respuesta);
								if (respuesta.error.message.indexOf("Unknown") !== -1) {
									mydata.isReal = 1;
									jQuery.ajax({
										url: '/api/Usuarios',
										type: 'POST',
										dataType: 'json',
										data: mydata
										//,contentType: 'application/json'
									}).done(function (respuesta) {
										console.log('El usuario recién registrado es ', respuesta);
										jQuery('.inputname', container).closest('.form-group').addClass('has-success');
										jQuery('.inputemail', container).closest('.form-group').addClass('has-success');
										jQuery('.inputcelular', container).closest('.form-group').addClass('has-error');
									});
								}
							});
						}

					});
				}, 500);

			}, {
				scope: 'user_friends'
			});
			//jQuery('.loggedout').show(); 
			//http://www.craack.com/api/Usuarios/10153125242673943/exists
			//http://www.craack.com/api/Usuarios/10153125242673943/exists
			//jQuery('.loggedin').hide();
		});
	});

});