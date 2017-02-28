//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function() {
  var fade_out = function() {
    $(".hide-notice").fadeOut("slow");
  }

  setTimeout(fade_out, 3000);
})
