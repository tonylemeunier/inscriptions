// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {

// when a tableau is selected
  $('#registration_tableau1').change(function() {
    // cache les 3 élements
    $('#com1').hide();
    $('#com2').hide();
    $('#com3').hide();
    // Value of tableau selected
    var tableau = $('#registration_tableau1').val();

    if(tableau == "DH" || tableau == "DD" || tableau == "DMx" ){
      $('#com1').show();
    } else {
      $('#com1').hide();
      $('#com2').hide();
      $('#com3').hide();
    }
  });

  $('#registration_tableau2').change(function() {
    // cache les 3 élements
    $('#com1').hide();
    $('#com2').hide();
    $('#com3').hide();
    // Value of tableau selected
    var tableau = $('#registration_tableau2').val();

    if(tableau == "DH" || tableau == "DD" || tableau == "DMx" ){
      $('#com2').show();
    } else {
      $('#com1').hide();
      $('#com2').hide();
      $('#com3').hide();
    }
  });

  $('#registration_tableau3').change(function() {
    // cache les 3 élements
    $('#com1').hide();
    $('#com2').hide();
    $('#com3').hide();
    // Value of tableau selected
    var tableau = $('#registration_tableau3').val();

    if(tableau == "DH" || tableau == "DD" || tableau == "DMx" ){
      $('#com3').show();
    } else {
      $('#com1').hide();
      $('#com2').hide();
      $('#com3').hide();
    }
  });




})
