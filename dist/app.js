var appname = {};
eventEmitter = new EventEmitter();
var appname = appname || {};
appname.colorizer = {
init: function() {
$('button').click(function() {
appname.colorizer.colorizeBackground();
appname.colorizer.moveHeadline();
console.log("Booo here it goes");
});
},
colorizeBackground: function() {
$('body').css('background', '#ebcdef');
},
};
$(function() {
appname.colorizer.init();
});
