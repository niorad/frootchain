app.colorizer = (function() {

  var init = function() {
    $('button').click(() => {
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