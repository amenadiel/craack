module.exports = function (Usuario) {
	Usuario.greet = function (msg, cb) {
		cb(null, 'Greetings... ' + msg);
	};

	Usuario.remoteMethod(
		'greet', {
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
};