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