//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

//= require_tree .

$(document).ready(function(){


  $(window).scroll(function() {
      $('#fixed_div').css('top', $(this).scrollTop());
    });
});
