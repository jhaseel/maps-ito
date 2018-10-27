var map;
var informacion = [];
var infoEdif = [];
var infoE = [];
var edificios = [];
var marcadores = [];
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {
      lat: 17.0793795,
      lng: -96.7443765
    },
    zoom: 18
  });
  llenaredificios();
  departamentos();
}

function llenaredificios() {
  var infoWindow;
  var req = new XMLHttpRequest();
  req.open("GET", "/edificios", false);
  req.send(null);
  //var mun=JSON.parse(req.responseText)
  edificios = JSON.parse(req.responseText);
  var mapa = document.getElementById("map");
  for (var i = 0; i < edificios.length; i++) {
    infoEdif.push(edificios[i].descripccion);
    infoE.push(edificios[i].nombre);
    mensajes(edificios[i]);

  }
}

function mensajes(datos) {
  var edif = [
    {
      lat: datos.lat1,
      lng: datos.lng1
    }, {
      lat: datos.lat2,
      lng: datos.lng2
    }, {
      lat: datos.lat3,
      lng: datos.lng3
    }, {
      lat: datos.lat4,
      lng: datos.lng4
    }, {
      lat: datos.lat1,
      lng: datos.lng1
    }
  ];

  var contentString =
  `<div class="demo-card-wide mdl-card mdl-shadow--2dp edificios-card">
    <div class="mdl-card__title">
      <h2 class="mdl-card__title-text">Edificio  ${datos.nombre_edificio}</h2></div>
    <div class="mdl-card__supporting-text">
      descripccion:  ${datos.descripccion} </div>
      <div class="mdl-card__actions mdl-card--border">
    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" id="hacer" OnClick="hacer('${datos.imagen}')">Visualizar</a>
  </div>
  </div>`;

  var rectagulos = new google.maps.Polygon({
    paths: edif,
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#FF0000',
    fillOpacity: 0.35
  });
  rectagulos.setMap(map);

  google.maps.event.addListener(rectagulos, 'click', function(event) {

    infoWindow.setContent(contentString);
    infoWindow.setPosition(event.latLng);
    infoWindow.open(map);
  });
  infoWindow = new google.maps.InfoWindow();
}

function colorEs(infor) {
  if (infor == "depto") {
    return colortipo[0];
  } else if (infor == "oficina") {
    return colortipo[1];
  } else if (infor == "lab") {
    return colortipo[2];
  }
}

var colortipo = [
  "https://maps.google.com/mapfiles/ms/icons/red-dot.png",
  "https://maps.google.com/mapfiles/ms/icons/blue-dot.png",
  "https://maps.google.com/mapfiles/ms/icons/yellow-dot.png",
  "https://maps.google.com/mapfiles/ms/icons/purple-dot.png",
  "https://maps.google.com/mapfiles/ms/icons/green-dot.png",
  "https://maps.google.com/mapfiles/ms/micons/pink-dot.png",
  "https://maps.google.com/mapfiles/ms/micons/orange-dot.png",
  "https://maps.google.com/mapfiles/ms/micons/ltblue-dot.png",
  "https://maps.google.com/mapfiles/ms/micons/yellow.png",
  "https://maps.google.com/mapfiles/ms/micons/blue.png",
  "https://maps.google.com/mapfiles/ms/micons/green.png",
  "https://maps.google.com/mapfiles/ms/micons/lightblue.png",
  "https://maps.google.com/mapfiles/ms/micons/orange.png",
  "https://maps.google.com/mapfiles/ms/micons/pink.png",
  "https://maps.google.com/mapfiles/ms/micons/ylw-pushpin.png",
  "https://maps.google.com/mapfiles/ms/micons/blue-pushpin.png",
  "https://maps.google.com/mapfiles/ms/micons/grn-pushpin.png",
  "https://maps.google.com/mapfiles/ms/micons/ltblu-pushpin.png"
];

var infowindow;
function departamentos() {

  var req = new XMLHttpRequest();
  req.open("GET", "/departamentos", false);
  req.send(null);
  depar = JSON.parse(req.responseText);
  var mapa = document.getElementById("map");
  for (var i = 0; i < depar.length; i++) {
    //infoEdif.push(depar[i].descripccion);
    //infoE.push(depar[i].nombre);
    //hacerMarcadores(depar[i]);

    var col = colorEs(depar[i].descripccion);
    var contentString =
    `<div class="demo-card-wide mdl-card mdl-shadow--2dp">
      <div class="mdl-card__title">
        <h2 class="mdl-card__title-text">departamento: ${depar[i].nombre}</h2>
      </div>
      <div class="mdl-card__supporting-text">
        encargado: ${depar[i].encargado}
        <div class="mdl-layout-spacer"></div>
        correo: ${depar[i].correo}
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" id="hacer" OnClick="hacer('${depar[i].imagen}')">Visualizar</a>
      </div>
    </div>`
    informacion.push(contentString);
    var mylatlng = new google.maps.LatLng(depar[i].lat, depar[i].lng);
    var marcador = new google.maps.Marker({
      position: mylatlng,
      map: map,
      title: depar[i].nombre,
      icon: {
        url: col
      }
    });
    marcadores.push(marcador);

    (function(i, marcador) {
      google.maps.event.addListener(marcador, 'click', function() {
        if (!infowindow) {
          infowindow = new google.maps.InfoWindow();
        }
        infowindow.setContent(informacion[i]);
        infowindow.open(map, marcador);
      });
    })(i, marcador);

  }
}
