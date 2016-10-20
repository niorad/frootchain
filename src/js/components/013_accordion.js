app.components.accordion = (function() {

  var base = {};

  var init = function($baseElement) {
    console.log('Initializing Accordion on ', $baseElement);
    base.$element = $baseElement;
    base.settings = base.$element.data('componentSettings');
    bindToggleButtons();
  };

  var bindToggleButtons = function() {
    base.$element.find('[data-accordion-toggler]').click(function() {
      $(this)
        .closest('[data-accordion-item-container]')
        .find('[data-accordion-content]')
        .slideToggle();
    });
  };


  return {
    init: init
  };

})();