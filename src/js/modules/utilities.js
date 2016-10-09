app.utilities = (function() {

  var elementExists = (selector) => {
    if( $(selector).length > 0) {
      return true;
    };
    return false;
  };

  return {
    exists: elementExists
  }

})();