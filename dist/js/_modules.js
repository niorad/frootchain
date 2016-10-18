'use strict';
// Initialize Globals
var app = app || {};
// This is where all the self-made modules are inserted by Froot
/**
 * Colorizes the background. This is an example-module.
 */
app.colorizer = (function() {
  var init = function() {
    $('button').click(function() {
      colorizeBackground();
    });
  };
  var colorizeBackground = function() {
    $('body').css('background', '#ebcdef');
  };
  return {
    init: init
  };
})();
/**
 * A collection of reusable utilities
 */
app.utilities = (function() {
  var elementExists = function(selector) {
    if( $(selector).length > 0) {
      return true;
    }
    return false;
  };
  return {
    exists: elementExists
  };
})();
$(function() {
  //Initialize all the js
  app.colorizer.init();
});
