var express= require('express');
var app=express();
var mysql= require('mysql');
const morgan = require('morgan');

app.set('view engine','html');
app.use(express.static(__dirname+'/views'));
app.use(morgan('dev') );

app.use(function(req, res, next) {
	res.setHeader('Access-Control-Allow-Origin', '*');
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE'); // If needed
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type,Origin,Accept'); // If needed
	res.setHeader('Access-Control-Allow-Credentials', true); // If needed
  next();
});

app.set('port', (process.env.PORT || 5000))

var conexion= mysql.createConnection({
	host: 'otwsl2e23jrxcqvx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
	user: 's0mmrbn8q8nm0qfq',
	password: 'uq7q3arhjra3zlzh',
	port: '3306',
	database: 'lbx8nyoc59rucalo'
});

conexion.connect();


app.get('/',function(req,res){
	res.render(__dirname+'index.html');
});

app.get('/edificios',function(req,res){
	conexion.query("SELECT * FROM edificios",function(err,rows,fields){
		if (err) {
			res.send("error!!!");
			return;
		}
		res.json(rows);
	});

});

app.get('/imagenes/:ide',function(req,res){
	conexion.query('SELECT * FROM edificios where idEdificios=?',req.params.ide,function(err,rows,fields){
		if(err) {
			res.send("error en la consulta");
			return;
		}else{
			if (rows.length>0) {
				//res.json(rows);
				res.render(__dirname+'imagen.html');
			}
		}
		console.log(rows.length);
		res.json(rows);
	});
});

app.get('/departamentos',function(req,res){
	conexion.query('SELECT * FROM departamento',function(err,rows,fields){
		if (err) {
			res.send("error!!!")
			return;
		}
		res.json(rows);
	});
});


app.listen(app.get('port'), function() {
  console.log("Node app en puerto=> " + app.get('port'))
});
