//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require_tree .

$(document).ready(function(){
  event.preventDefault();
  $('input[type="date"]').datepicker({
    format: "dd/mm/yyyy" });

  $(window).scroll(function() {
      $('#fixed_div').css('top', $(this).scrollTop());
    });
});
