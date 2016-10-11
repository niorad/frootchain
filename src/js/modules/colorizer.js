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