const addon = require('bindings')('sandwich');

function javascriptPart () {
  console.log('This is a Javascript function.');
  addon.cppPartExportedByNapi();
}

module.exports = {
  javascriptPart
}