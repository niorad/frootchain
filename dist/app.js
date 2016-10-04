// Initialize Globals
var app = app || {};
// Initialize eventEmitter
// ToDo Antonio: Check if better put in head-js
eventEmitter = new EventEmitter();
// This is where all the self-made modules are inserted by Froot
app.colorizer = {
init: function() {
$('button').click(function() {
app.colorizer.colorizeBackground();
console.log("Booo here it goes");
});
},
colorizeBackground: function() {
$('body').css('background', '#ebcdef');
},
};
$(function() {
//Initialize all the js
app.colorizer.init();
});
