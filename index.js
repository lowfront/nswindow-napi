let AppKit;
try {
  AppKit = require('bindings')('AppkitNAPI')
} catch (err) {
  console.error(err);
  AppKit = {};
}

module.exports = AppKit;