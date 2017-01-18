const addon = require('./build/Release/jsfoo.node');

function jsFoo () {
  console.log('This is a Javascript function.');
  console.log(addon.jsfoo());
}

jsFoo();
