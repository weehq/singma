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
//= require jquery.ui.all
//= require_tree .
jQuery(function($) {
  if (location.pathname.match(/gallery$/)) {
    jQuery( "#tabs" ).tabs();

    // Galleria Slider
    // Load the classic theme
    Galleria.loadTheme('/assets/galleria/galleria.classic.min.js');
    // Initialize Galleria
    Galleria.run('.galleria', {
      transition: 'fade',
      responsive: true
    });
  };

  jQuery.validator.addMethod("postcode", function(value, element) {
      return this.optional(element) || /^2/.test(value);
    },
    "Postcode must start with 2"
  );

  $('#new_quote').validate({
    rules: {
      'quote[name]': {
        required: true,
        minlength: 2
      },
      'quote[email]': {
        required: true,
        email: true
      },
      'quote[phone]': {
        required: true,
        digits: true,
        minlength: 8
      },
      'quote[postcode]': {
        required: true,
        digits: true,
        minlength: 4,
        postcode: true
      },
      'quote[access_difficulty]': {
        required: true
      },
    },
    messages: {
      'quote[name]': {
        required: "Please enter a name",
        minlength: "Name is too short (minimum is 2 characters)"
      },
      'quote[email]': {
        required: "Please enter a valid email address",
        email: "Your email address must be in the format of name@domain.com"
      },
      'quote[phone]': {
        required: "Please enter a phone number",
        digits: "Phone must be a number",
        minlength: "Phone is too short (minimum is 8 characters)"
      },
      'quote[postcode]': {
        required: "Please enter a valid postcode",
        digits: "Postcode must be a number",
        minlength: "Postcode is too short (must be 4 characters)"
      },
      'quote[access_difficulty]': {
        required: "Access difficulty can't be blank"
      },
    },
    invalidHandler: function(event, validator) {
      jQuery('.submit_button.process').val('Submit');
    }
  });

  $('#new_contact').validate({
    rules: {
      'contact[name]': {
        required: true,
        minlength: 2
      },
      'contact[postcode]': {
        required: true,
        digits: true,
        minlength: 4,
        postcode: true
      },
      'contact[phone]': {
        required: true,
        digits: true,
        minlength: 8
      },
      'contact[email]': {
        required: true,
        email: true
      },
      'contact[prefer_contact]': {
        required: true
      },
      'contact[bathroom_requirements]': {
        required: true
      },
      'contact[budget]': {
        number: true
      },
    },
    messages: {
      'contact[name]': {
        required: "Please enter a name",
        minlength: "Name is too short (minimum is 2 characters)"
      },
      'contact[postcode]': {
        required: "Please enter a valid postcode",
        digits: "Postcode must be a number",
        minlength: "Postcode is too short (must be 4 characters)"
      },
      'contact[phone]': {
        required: "Please enter a phone number",
        digits: "Phone must be a number",
        minlength: "Phone is too short (minimum is 8 characters)"
      },
      'contact[email]': {
        required: "Please enter a valid email address",
        email: "Your email address must be in the format of name@domain.com"
      },
      'contact[prefer_contact]': {
        required: "Prefer contact can't be blank"
      },
      'contact[bathroom_requirements]': {
        required: "Bathroom requirements can't be blank"
      },
      'contact[budget]': {
        number: "Budget must be a number"
      },
    },
    invalidHandler: function(event, validator) {
      jQuery('.submit_button.process').val('Submit');
    }
  });

  $('#new_testimonial').validate({
    rules: {
      'testimonial[name]': {
        required: true
      },
      'testimonial[suburb]': {
        required: true
      },
      'testimonial[comment]': {
        required: true
      },
    },
    messages: {
      'testimonial[name]': {
        required: "Please enter a name",
      },
      'testimonial[suburb]': {
        required: "Please enter a suburb",
      },
      'testimonial[comment]': {
        required: "Please enter a comment",
      },
    },
    invalidHandler: function(event, validator) {
      jQuery('.submit_button.process').val('Submit');
    }
  });

  // Refresh recent testimonial every 2 minutes
  setInterval(function() {
    $("footer .column_1 ul").fadeOut().load('/testimonials/show_recent').fadeIn();
  }, 72000);

  // form submit action
  jQuery('.submit_button.process').click(function() {
    jQuery('.submit_button.process').val('Please wait ...');
  });
});
