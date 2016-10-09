"use strict";

// Initialize Globals
var app = app || {};

// Initialize eventEmitter
// ToDo Antonio: Check if better put in head-js
eventEmitter = new EventEmitter();


// This is where all the self-made modules are inserted by Froot

// >>> "./modules/colorizer.js"
// >>> "./modules/utilities.js"


$(function() {

  //Initialize all the js
  app.colorizer.init();

});