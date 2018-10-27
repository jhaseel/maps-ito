const express = require('express');
const app = express.Router();

app.get('/', function(req, res,next) {
  res.render('index');
  next();
});

app.get('/edificios', function(req, res,next) {
  req.getConnection((err, conexion) => {
    conexion.query("SELECT * FROM edificios", function(err, rows, fields) {
      if (err) {
        res.send("error!!!");
        return;
      }
      res.json(rows);
    });

  });
});

app.get('/imagenes/:ide', function(req, res,next) {
  req.getConnection((err, conexion) => {

    conexion.query('SELECT * FROM edificios where idEdificios=?', req.params.ide, function(err, rows, fields) {
      if (err) {
        res.send("error en la consulta");
        return;
      } else {
        if (rows.length > 0) {
          //res.json(rows);
          res.render(__dirname + 'imagen.html');
        }
      }
      console.log(rows.length);
      res.json(rows);
    });

  });

});

app.get('/departamentos', function(req, res,next) {
  req.getConnection((err, conexion) => {
    conexion.query('SELECT * FROM departamento', function(err, rows, fields) {
      if (err) {
        res.send("error!!!")
        return;
      }
      res.json(rows);
    });
  });
});

module.exports = app;
