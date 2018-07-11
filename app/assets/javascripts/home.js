// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
function sum_fn0() {
    /* Assuming you have jQuery */
   
    $.post('/ajax/setshowquestion.json', {
        num1: 0
    }, function(data) {
        
        /* output should be 150 if successful */
    });
  
}


function sum_fn1() {
    /* Assuming you have jQuery */
   
    $.post('/ajax/setshowquestion.json', {
        num1: 1
    }, function(data) {
        
        /* output should be 150 if successful */
    });
}