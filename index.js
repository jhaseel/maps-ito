var express= require('express');
const path = require('path');
var mysql= require('mysql');
const myconnection = require('express-myconnection');
const morgan = require('morgan');
var app=express();
app.use(morgan('dev'));

const PORT = process.env.PORT || 80;
//view
app.set('view engine','html');
app.use(express.static(__dirname+'/views'));
//static files
app.use(express.static(__dirname + '/public'));

//CORS
app.use(function(req, res, next) {
	res.setHeader('Access-Control-Allow-Origin', '*');
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE'); // If needed
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type,Origin,Accept'); // If needed
	res.setHeader('Access-Control-Allow-Credentials', true); // If needed
  next();
});

//DB
app.use(myconnection(mysql, {
	host: 'otwsl2e23jrxcqvx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
	user: 's0mmrbn8q8nm0qfq',
	password: 'uq7q3arhjra3zlzh',
	port: '3306',
	database: 'lbx8nyoc59rucalo'
}, 'single' ));


//routes
const customerRouters = require('./routes/routes');
app.use('/', customerRouters);


app.listen(PORT ,function(){
	console.log('servidor iniciado...en el puerto '+PORT);
})
