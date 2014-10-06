//
// WARNING: THIS FILE WILL NOT RUN UNTIL YOU INSTALL, ADD, AND CONFIGURE A
// MYSQL DATA SOURCE, FOLLOWING INSTRUCTIONS IN "Getting Started with LoopBack"
// See http://docs.strongloop.com/display/LB2/Connect+an+API+to+a+datasource
//

var app = require('./server/server');
var ds = app.dataSources.craackmysql;
console.log('Will use datasource', 'craackmysql');


/*ds.discoverModelDefinitions({
	views: true,
	limit: 20
}, function (err, models) {
	console.log(models);
});*/

/*ds.discoverSchema('entrenador', {
	owner: 'craack'
}, function (err, models) {
	if (models.Entrenador) {
		console.log('found model Entrenador');
		models.Entrenador.setup();
	}

});*/

ds.discoverSchema('profesor', {
	owner: 'craack',
	visited: {},
	associations: true
}, function (err, models) {
	if (models.Profesor) {
		console.log('found model profesor');
		models.Profesor.setup();
	} else {
		console.log('models were', JSON.stringify(models));
	}
	/*models.Entrenador.find(function (err, act) {
		if (err) {
			console.errclearor(err);
		} else {
			console.log(act);
		}
		ds.disconnect();
	});*/
});

/*dataSource.discoverAndBuildModels('entrenador', {
	owner: 'craack',
	visited: {},
	associations: true
}, function (err, models) {
	//console.log(models);
	models.Entrenador.setup();
	models.Entrenador.find(function (err, act) {
		if (err) {
			console.error(err);
		} else {
			console.log(act);
		}
		dataSource.disconnect();
	});
}); 

dataSource.discoverAndBuildModels('entrenador_deporte', {
	owner: 'craack',
	visited: {},
	associations: true
}, function (err, models) {
	//console.log(models);
	models.EntrenadorDeporte.setup();
	models.EntrenadorDeporte.find(function (err, act) {
		if (err) {
			console.error(err);
		} else {
			console.log(act);
		}
		dataSource.disconnect();
	});
});

/*dataSource.discoverSchema('wz_tabla', {
	owner: 'asistente'
}, function (err, schema) {
	console.log(schema);
});*/



/*dataSource.discoverAndBuildModels('deporte', {
	owner: 'craack'
}, function (err, models) {
	//console.log(models);
	models.Deporte.setup();
	models.Deporte.find(function (err, act) {
		if (err) {
			console.error(err);
		} else {
			console.log(act);
		}
		dataSource.disconnect();
	});
});*/