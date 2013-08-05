// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery(function($) {
  if (location.pathname.match(/gallery$/)) {
    // Galleria Slider
    // Load the classic theme
    Galleria.loadTheme('/assets/galleria/galleria.classic.min.js');
    // Initialize Galleria
    Galleria.run('#galleria', {
      transition: 'fade',
      responsive: true
    });
  }

  // Refresh recent testimonial every 2 minutes
  setInterval(function() {
    $("footer .column_1 ul").fadeOut().load('/testimonials/show_recent').fadeIn();
  }, 72000);

  // form submit action
  jQuery('.submit_button.process').click(function() {
    jQuery('.submit_button.process').val('Please wait ...');
  });
});
