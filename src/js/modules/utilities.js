app.utilities = {

  elementExists: function(selector) {
    if( $(selector).length > 0) {
      return true;
    };
    return false;
  },

};