/**
 * Greeter greets the user.
 */
app.greeter = (function() {

  var greetUser = function() {
    console.log("Hello, User! 🖖");
  };

  return {
    greet: greetUser
  };

})();