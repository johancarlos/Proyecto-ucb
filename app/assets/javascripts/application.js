// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap
//= require social-share-button
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require jquery-ui/widgets/sortable
//= require rails_sortable
//= require turbolinks
//= require bootstrap-sprockets

//= require angular
//= require Chart.js
//= require tinycolor
//= require angles
//= require nanobar
//= require pusher

//= require_tree ./angular/modules
//= require_tree ./angular/factories
//= require_tree ./angular/directives
//= require_tree ./angular/controllers

//= require_tree .
//= require bootstrap-datepicker

$(function() {
    $('.sortable').railsSortable();
  });


  function sum_fn0() {
    /* Assuming you have jQuery */
    $.ajaxSetup({async: false});
    $.post('/ajax/setshowquestion.json', {
        num1: 0
    }, function(data) {
        
        /* output should be 150 if successful */
    });
  
}


function sum_fn1() {
    /* Assuming you have jQuery */
    $.ajaxSetup({async: false});
    $.post('/ajax/setshowquestion.json', {
        num1: 1
    }, function(data) {
        
        /* output should be 150 if successful */
    });
}