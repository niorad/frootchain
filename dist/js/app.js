/**
 * Put your libraries (jQuery, Lodash etc.) here.
 * They will be concatenated into one file, which per default is _lib.js.
 */
'use strict';
// Initialize Globals
var app = app || {};
// This is where all the self-made modules are inserted by Froot
/**
 * Greeter greets the user.
 */
app.greeter = (function() {
  var greetUser = function() {
    console.log("Hello, User! 🖖");
  };
  return {
    greet: greetUser
  };
})();
app.greeter.greet();
