var path = require('path');


// {{ settings for nico
exports.theme = __dirname
exports.source = process.cwd()
exports.output = path.join(process.cwd(), '_site')
exports.permalink = '{{directory}}/{{filename}}.html'
exports.google = ''
exports.sitename = 'Chopper'
exports.ignorefilter = function(filepath, subdir) {
  if (/^(_site|_theme|node_modules)/.test(subdir)) {
    return false;
  }
  return true;
}
exports.writers = [
  'nico.PageWriter',
  'nico.StaticWriter',
  'nico.FileWriter'
]
// end settings }}

// extends for theme usage, that can be accessable by {{config.xxx}}
var pkg = require(path.join(process.cwd(), 'package.json'))
exports.assets_host = 'http://assets.spmjs.org';
exports.package = pkg;
