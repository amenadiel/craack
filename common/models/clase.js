module.exports = function (Clase) {
	Clase.saluda = function (msg, cb) {
		cb(null, 'Hola pos... ' + msg);
	};

	Clase.remoteMethod(
		'saluda', {
			accepts: {
				arg: 'msg',
				type: 'string'
			},
			returns: {
				arg: 'greeting',
				type: 'string'
			}
		}
	);

	Clase.getcomuna = function (idcomuna, callback) {

		Clase.find({
				//include: ['deporte', 'establecimiento', 'entrenador'],
				include: ['deporte', {
					establecimiento: ['comuna'],
				}],

				where: {
					idComuna: idcomuna
				}
			},
			function (err, clases) {
				callback(null, clases);
			});

	};

	Clase.remoteMethod(
		'getcomuna', {
			accepts: {
				art: 'idcomuna',
				type: 'integer'
			},
			returns: {
				arg: 'comuna',
				type: 'string'
			}
		});
};