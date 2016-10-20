'use strict';

// Initialize Globals
var app = app || {};
app.components = {};

// This is where all the self-made modules are inserted by Froot

// >>> "./components/013_accordion.js"

var $components = $('[data-component]');

$(function() {
  $components.each(function() {
    app.components[$(this).data('component')].init($(this));
  });
});