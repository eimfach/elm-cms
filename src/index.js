require('./main.css');
var Elm = require('./Main.elm');

Elm.Main.embed(document.getElementById('root'), 'http://localhost:3001/');
