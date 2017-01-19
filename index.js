const addon = require('./build/Release/jsfoo.node');

function jsFoo () {
  console.log('This is a Javascript function.');
  addon.jsfoo();
}

jsFoo();
