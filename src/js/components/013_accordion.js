app.components.accordion = (function() {

  var base = {};

  var init = function($baseElement) {
    console.log('Initializing Accordion on ', $baseElement);
    base.$element = $baseElement;
    base.settings = base.$element.data('componentSettings');
    bindToggleButtons();
    if(!base.settings.showOnStart) {
      collapseAllItems(false);
    }
  };

  var bindToggleButtons = function() {
    base.$element.find('[data-accordion-toggler]').click(function() {

      if($(this).is('.active')) {
        $(this)
          .removeClass('active')
          .closest('[data-accordion-item-container]')
          .find('[data-accordion-content]')
          .slideUp(base.settings.slideDuration);
      } else {
        if(!base.settings.allowMultiple) {
          collapseAllItems(true);
        }
        $(this)
          .addClass('active')
          .closest('[data-accordion-item-container]')
          .find('[data-accordion-content]')
          .slideDown(base.settings.slideDuration);
      }
    });
  };

  var collapseAllItems = function(animateCollapse) {
    if(animateCollapse) {
      base.$element.find('[data-accordion-content]').slideUp(base.settings.slideDuration);
    } else {
      base.$element.find('[data-accordion-content]').hide();
    }
    base.$element.find('[data-accordion-toggler]').removeClass('active');
  };


  return {
    init: init
  };

});