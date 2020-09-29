const addon = require('bindings')('sandwich');

function jsFoo () {
  console.log('This is a Javascript function.');
  addon.jsfoo();
}

jsFoo();
console.log('a');