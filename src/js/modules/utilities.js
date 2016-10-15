/**
 * A collection of reusable utilities
 */
app.utilities = (function() {

  var elementExists = function(selector) {
    if( $(selector).length > 0) {
      return true;
    };
    return false;
  };

  return {
    exists: elementExists
  }

})();