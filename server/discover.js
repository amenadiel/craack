//
// WARNING: THIS FILE WILL NOT RUN UNTIL YOU INSTALL, ADD, AND CONFIGURE A
// MYSQL DATA SOURCE, FOLLOWING INSTRUCTIONS IN "Getting Started with LoopBack"
// See http://docs.strongloop.com/display/LB2/Connect+an+API+to+a+datasource
//

var app = require('./app');
var dataSource = app.dataSources.craackmysql;
console.log('Will use datasource', 'craackmysql');





/*dataSource.discoverSchema('wz_tabla', {
	owner: 'asistente'
}, function (err, schema) {
	console.log(schema);
});*/

/*dataSource.discoverAndBuildModels('wz_tabla', {
	owner: 'asistente'
}, function (err, models) {
	console.log('Models are', models);
	models.WzTabla.find(function (err, act) {
		if (err) {
			console.error(err);
		} else {
			console.log(act);
		}
		dataSource.disconnect();
	});
});

dataSource.discoverSchema('craack', {
	owner: 'craack'
}, function (err, schema) {
	console.log('schema is', schema);
	/*models.WzTabla.find(function (err, act) {
		if (err) {
			console.error(err);
		} else {
			console.log(act);
		}
		dataSource.disconnect();
	});

});*/

dataSource.discoverAndBuildModels('deporte', {
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
});

/*dataSource.discoverModelDefinitions({
		owner: 'asistente'
	},
	function (err, models) {
		models.forEach(function (def) {
			console.log(def);
			dataSource.discoverSchema('wz_tabla', {
				owner: 'asistente'
			}, function (err, schema) {
				console.log(schema);
			});
			// def.name ~ the model name

		});
	});

/*dataSource.discoverModelDefinitions({all:true}, function (err, schema) {
	console.log(JSON.stringify(schema, null, '  '));
});*/

/*dataSource.discoverSchema('asistente', {
	owner: 'pgadmin'
}, function (err, schema) {
	console.log(JSON.stringify(schema, null, '  '));
});*/